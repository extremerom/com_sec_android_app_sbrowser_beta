.class public final Lorg/chromium/gpu/mojom/GpuFeatureInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public appliedGpuBlocklistEntries:[I

.field public appliedGpuDriverBugListEntries:[I

.field public disabledExtensions:Ljava/lang/String;

.field public disabledWebglExtensions:Ljava/lang/String;

.field public enabledGpuDriverBugWorkarounds:[I

.field public statusValues:[I

.field public supportedBufferFormatsForAllocationAndTexturing:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/GpuFeatureInfo;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;

    invoke-direct {v1, v0}, Lorg/chromium/gpu/mojom/GpuFeatureInfo;-><init>(I)V

    const/16 v0, 0x8

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->statusValues:[I

    move v0, v3

    :goto_0
    iget-object v2, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->statusValues:[I

    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget v2, v2, v0

    invoke-static {v2}, Lorg/chromium/gpu/mojom/GpuFeatureStatus;->validate(I)V

    iget-object v2, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->statusValues:[I

    aget v4, v2, v0

    invoke-static {v4}, Lorg/chromium/gpu/mojom/GpuFeatureStatus;->toKnownValue(I)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v0, 0x10

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->enabledGpuDriverBugWorkarounds:[I

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->disabledExtensions:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->disabledWebglExtensions:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->appliedGpuBlocklistEntries:[I

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->appliedGpuDriverBugListEntries:[I

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->supportedBufferFormatsForAllocationAndTexturing:[I

    :goto_1
    iget-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->supportedBufferFormatsForAllocationAndTexturing:[I

    array-length v2, v0

    if-ge v3, v2, :cond_2

    aget v0, v0, v3

    invoke-static {v0}, Lorg/chromium/gfx/mojom/BufferFormat;->validate(I)V

    iget-object v0, v1, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->supportedBufferFormatsForAllocationAndTexturing:[I

    aget v2, v0, v3

    invoke-static {v2}, Lorg/chromium/gfx/mojom/BufferFormat;->toKnownValue(I)I

    move-result v2

    aput v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

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
    .locals 4

    sget-object v0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->statusValues:[I

    const/16 v1, 0xc

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->enabledGpuDriverBugWorkarounds:[I

    const/16 v1, 0x10

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->disabledExtensions:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->disabledWebglExtensions:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->appliedGpuBlocklistEntries:[I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->appliedGpuDriverBugListEntries:[I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object p0, p0, Lorg/chromium/gpu/mojom/GpuFeatureInfo;->supportedBufferFormatsForAllocationAndTexturing:[I

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
