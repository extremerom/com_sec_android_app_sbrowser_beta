.class public final Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public gpuSupportedPixelFormats:[I

.field public isSoftwareCodec:Z

.field public maxFramerateDenominator:I

.field public maxFramerateNumerator:I

.field public maxResolution:Lorg/chromium/gfx/mojom/Size;

.field public minResolution:Lorg/chromium/gfx/mojom/Size;

.field public profile:I

.field public rateControlModes:[I

.field public scalabilityModes:[I

.field public supportsGpuSharedImages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->profile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoCodecProfile;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->profile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoCodecProfile;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->profile:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->maxFramerateNumerator:I

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->minResolution:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->maxResolution:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->maxFramerateDenominator:I

    const/16 v0, 0x24

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->isSoftwareCodec:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->supportsGpuSharedImages:Z

    const/16 v0, 0x28

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->rateControlModes:[I

    move v0, v2

    :goto_0
    iget-object v4, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->rateControlModes:[I

    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget v4, v4, v0

    invoke-static {v4}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedRateControlMode;->validate(I)V

    iget-object v4, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->rateControlModes:[I

    aget v5, v4, v0

    invoke-static {v5}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedRateControlMode;->toKnownValue(I)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->scalabilityModes:[I

    move v0, v2

    :goto_1
    iget-object v4, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->scalabilityModes:[I

    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget v4, v4, v0

    invoke-static {v4}, Lorg/chromium/media/mojom/SvcScalabilityMode;->validate(I)V

    iget-object v4, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->scalabilityModes:[I

    aget v5, v4, v0

    invoke-static {v5}, Lorg/chromium/media/mojom/SvcScalabilityMode;->toKnownValue(I)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->gpuSupportedPixelFormats:[I

    :goto_2
    iget-object v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->gpuSupportedPixelFormats:[I

    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget v0, v0, v2

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoPixelFormat;->validate(I)V

    iget-object v0, v1, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->gpuSupportedPixelFormats:[I

    aget v3, v0, v2

    invoke-static {v3}, Lorg/chromium/media/mojom/VideoPixelFormat;->toKnownValue(I)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->profile:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->maxFramerateNumerator:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->minResolution:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->maxResolution:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->maxFramerateDenominator:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->isSoftwareCodec:Z

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->supportsGpuSharedImages:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->rateControlModes:[I

    const/16 v1, 0x28

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->scalabilityModes:[I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object p0, p0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorSupportedProfile;->gpuSupportedPixelFormats:[I

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
