.class public final Lorg/chromium/skia/mojom/ImageInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public alphaType:I

.field public colorToXyzMatrix:[F

.field public colorTransferFunction:[F

.field public colorType:I

.field public height:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/skia/mojom/ImageInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/skia/mojom/ImageInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/ImageInfo;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/skia/mojom/ImageInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/skia/mojom/ImageInfo;

    invoke-direct {v1, v0}, Lorg/chromium/skia/mojom/ImageInfo;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->colorType:I

    invoke-static {v0}, Lorg/chromium/skia/mojom/ColorType;->validate(I)V

    iget v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->colorType:I

    invoke-static {v0}, Lorg/chromium/skia/mojom/ColorType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->colorType:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->alphaType:I

    invoke-static {v0}, Lorg/chromium/skia/mojom/AlphaType;->validate(I)V

    iget v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->alphaType:I

    invoke-static {v0}, Lorg/chromium/skia/mojom/AlphaType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->alphaType:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->width:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->height:I

    const/16 v0, 0x18

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloats(III)[F

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->colorTransferFunction:[F

    const/16 v0, 0x20

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloats(III)[F

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/skia/mojom/ImageInfo;->colorToXyzMatrix:[F
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
    .locals 4

    sget-object v0, Lorg/chromium/skia/mojom/ImageInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/skia/mojom/ImageInfo;->colorType:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/skia/mojom/ImageInfo;->alphaType:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/skia/mojom/ImageInfo;->width:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/skia/mojom/ImageInfo;->height:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/skia/mojom/ImageInfo;->colorTransferFunction:[F

    const/4 v1, 0x7

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([FIII)V

    iget-object p0, p0, Lorg/chromium/skia/mojom/ImageInfo;->colorToXyzMatrix:[F

    const/16 v0, 0x20

    const/16 v1, 0x9

    invoke-virtual {p1, p0, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([FIII)V

    return-void
.end method
