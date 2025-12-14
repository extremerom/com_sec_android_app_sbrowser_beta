.class public final Lorg/chromium/media/mojom/VideoEncoderInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public applyAlignmentToAllSimulcastLayers:Z

.field public fpsAllocation:[[B

.field public frameDelay:I

.field public hasFrameDelay:Z

.field public hasInputCapacity:Z

.field public hasTrustedRateController:Z

.field public implementationName:Ljava/lang/String;

.field public inputCapacity:I

.field public isHardwareAccelerated:Z

.field public reportsAverageQp:Z

.field public requestedResolutionAlignment:I

.field public resolutionRateLimits:[Lorg/chromium/media/mojom/ResolutionRateLimit;

.field public supportsFrameSizeChange:Z

.field public supportsNativeHandle:Z

.field public supportsSimulcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoEncoderInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/VideoEncoderInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasFrameDelay:Z

    iput-boolean p1, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasInputCapacity:Z

    iput-boolean p1, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->supportsFrameSizeChange:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoEncoderInfo;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/VideoEncoderInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/VideoEncoderInfo;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/VideoEncoderInfo;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->implementationName:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasFrameDelay:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasInputCapacity:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->supportsNativeHandle:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasTrustedRateController:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->isHardwareAccelerated:Z

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->supportsSimulcast:Z

    const/4 v5, 0x6

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->reportsAverageQp:Z

    const/4 v5, 0x7

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->applyAlignmentToAllSimulcastLayers:Z

    const/16 v3, 0x11

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->supportsFrameSizeChange:Z

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->frameDelay:I

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->inputCapacity:I

    const/16 v3, 0x1c

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->requestedResolutionAlignment:I

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [[B

    iput-object v5, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->fpsAllocation:[[B

    move v5, v2

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v7, -0x1

    if-ge v5, v6, :cond_1

    iget-object v6, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->fpsAllocation:[[B

    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v0

    invoke-virtual {v3, v8, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/media/mojom/ResolutionRateLimit;

    iput-object v5, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->resolutionRateLimits:[Lorg/chromium/media/mojom/ResolutionRateLimit;

    move v5, v2

    :goto_1
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/media/mojom/VideoEncoderInfo;->resolutionRateLimits:[Lorg/chromium/media/mojom/ResolutionRateLimit;

    invoke-static {v6}, Lorg/chromium/media/mojom/ResolutionRateLimit;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/ResolutionRateLimit;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/media/mojom/VideoEncoderInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->implementationName:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasFrameDelay:Z

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasInputCapacity:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->supportsNativeHandle:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->hasTrustedRateController:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->isHardwareAccelerated:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->supportsSimulcast:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->reportsAverageQp:Z

    const/4 v5, 0x6

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->applyAlignmentToAllSimulcastLayers:Z

    const/4 v5, 0x7

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->supportsFrameSizeChange:Z

    const/16 v3, 0x11

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->frameDelay:I

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->inputCapacity:I

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->requestedResolutionAlignment:I

    const/16 v3, 0x1c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->fpsAllocation:[[B

    const/4 v3, -0x1

    const/16 v5, 0x20

    if-nez v0, :cond_0

    invoke-virtual {p1, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->fpsAllocation:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->resolutionRateLimits:[Lorg/chromium/media/mojom/ResolutionRateLimit;

    const/16 v4, 0x28

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/chromium/media/mojom/VideoEncoderInfo;->resolutionRateLimits:[Lorg/chromium/media/mojom/ResolutionRateLimit;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
