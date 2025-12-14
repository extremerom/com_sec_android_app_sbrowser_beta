.class public final Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public blockedByResponseReason:Lorg/chromium/network/mojom/BlockedByResponseReasonWrapper;

.field public completionTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public corsErrorStatus:Lorg/chromium/network/mojom/CorsErrorStatus;

.field public decodedBodyLength:J

.field public encodedBodyLength:J

.field public encodedDataLength:J

.field public errorCode:I

.field public existsInCache:Z

.field public existsInMemoryCache:Z

.field public extendedErrorCode:I

.field public privateNetworkAccessPreflightResult:I

.field public resolveErrorInfo:Lorg/chromium/network/mojom/ResolveErrorInfo;

.field public shouldCollapseInitiator:Z

.field public shouldReportOrbBlocking:Z

.field public sslInfo:Lorg/chromium/network/mojom/SslInfo;

.field public trustTokenOperationStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x60

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->errorCode:I

    iput p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->extendedErrorCode:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->existsInCache:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->existsInMemoryCache:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->encodedDataLength:J

    iput-wide v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->encodedBodyLength:J

    iput-wide v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->decodedBodyLength:J

    iput p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->privateNetworkAccessPreflightResult:I

    iput p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->trustTokenOperationStatus:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->shouldReportOrbBlocking:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->shouldCollapseInitiator:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->errorCode:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->extendedErrorCode:I

    const/4 v0, 0x0

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->existsInCache:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->existsInMemoryCache:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->shouldReportOrbBlocking:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->shouldCollapseInitiator:Z

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->privateNetworkAccessPreflightResult:I

    invoke-static {v2}, Lorg/chromium/network/mojom/PrivateNetworkAccessPreflightResult;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->privateNetworkAccessPreflightResult:I

    invoke-static {v2}, Lorg/chromium/network/mojom/PrivateNetworkAccessPreflightResult;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->privateNetworkAccessPreflightResult:I

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojo_base/mojom/TimeTicks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->completionTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->encodedDataLength:J

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->encodedBodyLength:J

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->decodedBodyLength:J

    const/16 v2, 0x38

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/CorsErrorStatus;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CorsErrorStatus;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->corsErrorStatus:Lorg/chromium/network/mojom/CorsErrorStatus;

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->trustTokenOperationStatus:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationStatus;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->trustTokenOperationStatus:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationStatus;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->trustTokenOperationStatus:I

    const/16 v2, 0x48

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/SslInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SslInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    const/16 v2, 0x50

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/BlockedByResponseReasonWrapper;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/BlockedByResponseReasonWrapper;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->blockedByResponseReason:Lorg/chromium/network/mojom/BlockedByResponseReasonWrapper;

    const/16 v2, 0x58

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/ResolveErrorInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ResolveErrorInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->resolveErrorInfo:Lorg/chromium/network/mojom/ResolveErrorInfo;
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

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->errorCode:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->extendedErrorCode:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->existsInCache:Z

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->existsInMemoryCache:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->shouldReportOrbBlocking:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->shouldCollapseInitiator:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->privateNetworkAccessPreflightResult:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->completionTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->encodedDataLength:J

    const/16 v4, 0x20

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->encodedBodyLength:J

    const/16 v4, 0x28

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->decodedBodyLength:J

    const/16 v4, 0x30

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->corsErrorStatus:Lorg/chromium/network/mojom/CorsErrorStatus;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->trustTokenOperationStatus:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->sslInfo:Lorg/chromium/network/mojom/SslInfo;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->blockedByResponseReason:Lorg/chromium/network/mojom/BlockedByResponseReasonWrapper;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;->resolveErrorInfo:Lorg/chromium/network/mojom/ResolveErrorInfo;

    const/16 v0, 0x58

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
