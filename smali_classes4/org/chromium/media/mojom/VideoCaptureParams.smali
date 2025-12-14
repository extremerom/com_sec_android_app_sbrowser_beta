.class public final Lorg/chromium/media/mojom/VideoCaptureParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bufferType:I

.field public enableFaceDetection:Z

.field public isHighDpiEnabled:Z

.field public powerLineFrequency:I

.field public requestedFormat:Lorg/chromium/media/mojom/VideoCaptureFormat;

.field public resolutionChangePolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoCaptureParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/media/mojom/VideoCaptureParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoCaptureParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/VideoCaptureParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/VideoCaptureParams;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/VideoCaptureParams;-><init>(I)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/media/mojom/VideoCaptureFormat;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoCaptureFormat;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->requestedFormat:Lorg/chromium/media/mojom/VideoCaptureFormat;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->bufferType:I

    invoke-static {v2}, Lorg/chromium/media/mojom/VideoCaptureBufferType;->validate(I)V

    iget v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->bufferType:I

    invoke-static {v2}, Lorg/chromium/media/mojom/VideoCaptureBufferType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->bufferType:I

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->resolutionChangePolicy:I

    invoke-static {v2}, Lorg/chromium/media/mojom/ResolutionChangePolicy;->validate(I)V

    iget v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->resolutionChangePolicy:I

    invoke-static {v2}, Lorg/chromium/media/mojom/ResolutionChangePolicy;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->resolutionChangePolicy:I

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->powerLineFrequency:I

    invoke-static {v2}, Lorg/chromium/media/mojom/PowerLineFrequency;->validate(I)V

    iget v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->powerLineFrequency:I

    invoke-static {v2}, Lorg/chromium/media/mojom/PowerLineFrequency;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->powerLineFrequency:I

    const/16 v2, 0x1c

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->enableFaceDetection:Z

    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/media/mojom/VideoCaptureParams;->isHighDpiEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/media/mojom/VideoCaptureParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoCaptureParams;->requestedFormat:Lorg/chromium/media/mojom/VideoCaptureFormat;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoCaptureParams;->bufferType:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoCaptureParams;->resolutionChangePolicy:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoCaptureParams;->powerLineFrequency:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/VideoCaptureParams;->enableFaceDetection:Z

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/media/mojom/VideoCaptureParams;->isHighDpiEnabled:Z

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v1, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
