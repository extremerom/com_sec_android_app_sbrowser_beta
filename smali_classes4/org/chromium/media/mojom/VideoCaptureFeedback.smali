.class public final Lorg/chromium/media/mojom/VideoCaptureFeedback;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public deprecatedMappedSizes:[Lorg/chromium/gfx/mojom/Size;

.field public frameId:I

.field public hasFrameId:Z

.field public maxFramerateFps:F

.field public maxPixels:I

.field public requireMappedFrame:Z

.field public resourceUtilization:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v2, 0x1

    const/16 v3, 0x28

    invoke-direct {v1, v3, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1, v2}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v4

    sput-object v0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->frameId:I

    iput-boolean p1, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->hasFrameId:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoCaptureFeedback;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/media/mojom/VideoCaptureFeedback;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;

    invoke-direct {v2, v1}, Lorg/chromium/media/mojom/VideoCaptureFeedback;-><init>(I)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->resourceUtilization:D

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v4

    iput v4, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->maxFramerateFps:F

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->maxPixels:I

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->requireMappedFrame:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v1, v6, :cond_1

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->hasFrameId:Z

    const/16 v4, 0x1c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->frameId:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    if-lt v1, v7, :cond_3

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v0, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->deprecatedMappedSizes:[Lorg/chromium/gfx/mojom/Size;

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v4, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v4, v4, [Lorg/chromium/gfx/mojom/Size;

    iput-object v4, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->deprecatedMappedSizes:[Lorg/chromium/gfx/mojom/Size;

    move v4, v5

    :goto_1
    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v4, v6, :cond_3

    const/16 v6, 0x8

    invoke-static {v4, v6, v3, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v2, Lorg/chromium/media/mojom/VideoCaptureFeedback;->deprecatedMappedSizes:[Lorg/chromium/gfx/mojom/Size;

    invoke-static {v6}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v6

    aput-object v6, v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->resourceUtilization:D

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->maxFramerateFps:F

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->maxPixels:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->requireMappedFrame:Z

    const/16 v1, 0x18

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->hasFrameId:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->frameId:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->deprecatedMappedSizes:[Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x20

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v3

    :goto_0
    iget-object v1, p0, Lorg/chromium/media/mojom/VideoCaptureFeedback;->deprecatedMappedSizes:[Lorg/chromium/gfx/mojom/Size;

    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v1, v1, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v2

    invoke-virtual {p1, v1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
