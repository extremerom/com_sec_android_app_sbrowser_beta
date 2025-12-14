.class public final Lorg/chromium/media/mojom/VideoFrame;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public codedSize:Lorg/chromium/gfx/mojom/Size;

.field public colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

.field public data:Lorg/chromium/media/mojom/VideoFrameData;

.field public format:I

.field public hdrMetadata:Lorg/chromium/gfx/mojom/HdrMetadata;

.field public metadata:Lorg/chromium/media/mojom/VideoFrameMetadata;

.field public naturalSize:Lorg/chromium/gfx/mojom/Size;

.field public timestamp:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public visibleRect:Lorg/chromium/gfx/mojom/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoFrame;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/VideoFrame;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoFrame;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/VideoFrame;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/VideoFrame;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/VideoFrame;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoFrame;->format:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoPixelFormat;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/VideoFrame;->format:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoPixelFormat;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoFrame;->format:I

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->codedSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->visibleRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->naturalSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->timestamp:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0x30

    invoke-static {p0, v0}, Lorg/chromium/media/mojom/VideoFrameData;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/media/mojom/VideoFrameData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->data:Lorg/chromium/media/mojom/VideoFrameData;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoFrameMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoFrameMetadata;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->metadata:Lorg/chromium/media/mojom/VideoFrameMetadata;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/ColorSpace;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/ColorSpace;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

    const/16 v0, 0x50

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/HdrMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/HdrMetadata;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/VideoFrame;->hdrMetadata:Lorg/chromium/gfx/mojom/HdrMetadata;
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
    .locals 3

    sget-object v0, Lorg/chromium/media/mojom/VideoFrame;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/media/mojom/VideoFrame;->format:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrame;->codedSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrame;->visibleRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrame;->naturalSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrame;->timestamp:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrame;->data:Lorg/chromium/media/mojom/VideoFrameData;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrame;->metadata:Lorg/chromium/media/mojom/VideoFrameMetadata;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/VideoFrame;->colorSpace:Lorg/chromium/gfx/mojom/ColorSpace;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/media/mojom/VideoFrame;->hdrMetadata:Lorg/chromium/gfx/mojom/HdrMetadata;

    const/16 v0, 0x50

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
