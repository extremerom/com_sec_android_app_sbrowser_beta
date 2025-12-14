.class public final Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;
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

.field public cacheStorageCacheName:Ljava/lang/String;

.field public certStatus:I

.field public charset:Ljava/lang/String;

.field public emittedExtraInfo:Z

.field public encodedDataLength:J

.field public headers:Lorg/chromium/network/mojom/HttpResponseHeaders;

.field public loadTiming:Lorg/chromium/network/mojom/LoadTimingInfo;

.field public mimeType:Ljava/lang/String;

.field public remoteEndpoint:Lorg/chromium/network/mojom/IpEndPoint;

.field public responseTime:Lorg/chromium/mojo_base/mojom/Time;

.field public serviceWorkerResponseSource:I

.field public serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

.field public sslInfo:Lorg/chromium/network/mojom/SslInfo;

.field public wasFetchedViaServiceWorker:Z

.field public wasFetchedViaSpdy:Z

.field public wasInPrefetchCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->responseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/HttpResponseHeaders;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpResponseHeaders;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->headers:Lorg/chromium/network/mojom/HttpResponseHeaders;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->mimeType:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->charset:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/LoadTimingInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/LoadTimingInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->loadTiming:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->certStatus:I

    const/16 v0, 0x34

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->wasInPrefetchCache:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->wasFetchedViaServiceWorker:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->wasFetchedViaSpdy:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->emittedExtraInfo:Z

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->encodedDataLength:J

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->cacheStorageCacheName:Ljava/lang/String;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->alternateProtocolUsage:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AlternateProtocolUsage;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->alternateProtocolUsage:I

    invoke-static {v0}, Lorg/chromium/network/mojom/AlternateProtocolUsage;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->alternateProtocolUsage:I

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->serviceWorkerResponseSource:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseSource;->validate(I)V

    iget v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->serviceWorkerResponseSource:I

    invoke-static {v0}, Lorg/chromium/network/mojom/FetchResponseSource;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->serviceWorkerResponseSource:I

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/SslInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SslInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/IpEndPoint;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/IpEndPoint;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->remoteEndpoint:Lorg/chromium/network/mojom/IpEndPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->responseTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->headers:Lorg/chromium/network/mojom/HttpResponseHeaders;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->mimeType:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->charset:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->loadTiming:Lorg/chromium/network/mojom/LoadTimingInfo;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->certStatus:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->wasInPrefetchCache:Z

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->wasFetchedViaServiceWorker:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->wasFetchedViaSpdy:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->emittedExtraInfo:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->encodedDataLength:J

    const/16 v4, 0x38

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->cacheStorageCacheName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->alpnNegotiatedProtocol:Ljava/lang/String;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->alternateProtocolUsage:I

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->serviceWorkerResponseSource:I

    const/16 v1, 0x54

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->serviceWorkerRouterInfo:Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;->remoteEndpoint:Lorg/chromium/network/mojom/IpEndPoint;

    const/16 v0, 0x68

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
