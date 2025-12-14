.class public final Lorg/chromium/media/mojom/VideoColorSpace;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoColorSpace$PrimaryId;,
        Lorg/chromium/media/mojom/VideoColorSpace$TransferId;,
        Lorg/chromium/media/mojom/VideoColorSpace$MatrixId;,
        Lorg/chromium/media/mojom/VideoColorSpace$RangeId;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public matrix:I

.field public primaries:I

.field public range:I

.field public transfer:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/VideoColorSpace;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/VideoColorSpace;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoColorSpace;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/VideoColorSpace;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/VideoColorSpace;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/VideoColorSpace;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->primaries:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$PrimaryId;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->primaries:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$PrimaryId;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->primaries:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->transfer:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$TransferId;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->transfer:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$TransferId;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->transfer:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->matrix:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$MatrixId;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->matrix:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$MatrixId;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->matrix:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->range:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$RangeId;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->range:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoColorSpace$RangeId;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/VideoColorSpace;->range:I
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
    .locals 2

    sget-object v0, Lorg/chromium/media/mojom/VideoColorSpace;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/media/mojom/VideoColorSpace;->primaries:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoColorSpace;->transfer:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/VideoColorSpace;->matrix:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/media/mojom/VideoColorSpace;->range:I

    const/16 v0, 0x14

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
