.class public final Lorg/chromium/viz/mojom/FilterOperation;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public amount:F

.field public blurTileMode:I

.field public dropShadowColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public imageFilter:Lorg/chromium/viz/mojom/PaintFilter;

.field public matrix:[F

.field public offset:Lorg/chromium/gfx/mojom/Point;

.field public shape:[Lorg/chromium/gfx/mojom/Rect;

.field public type:I

.field public zoomInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/FilterOperation;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/FilterOperation;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FilterOperation;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/viz/mojom/FilterOperation;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/viz/mojom/FilterOperation;

    invoke-direct {v2, v1}, Lorg/chromium/viz/mojom/FilterOperation;-><init>(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->type:I

    invoke-static {v3}, Lorg/chromium/viz/mojom/FilterType;->validate(I)V

    iget v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->type:I

    invoke-static {v3}, Lorg/chromium/viz/mojom/FilterType;->toKnownValue(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->type:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v3

    iput v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->amount:F

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Point;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Point;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->offset:Lorg/chromium/gfx/mojom/Point;

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->dropShadowColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/PaintFilter;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/PaintFilter;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->imageFilter:Lorg/chromium/viz/mojom/PaintFilter;

    const/16 v3, 0x28

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readFloats(III)[F

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->matrix:[F

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->zoomInset:I

    const/16 v3, 0x34

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->blurTileMode:I

    invoke-static {v3}, Lorg/chromium/skia/mojom/TileMode;->validate(I)V

    iget v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->blurTileMode:I

    invoke-static {v3}, Lorg/chromium/skia/mojom/TileMode;->toKnownValue(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/viz/mojom/FilterOperation;->blurTileMode:I

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    if-nez v3, :cond_1

    iput-object v0, v2, Lorg/chromium/viz/mojom/FilterOperation;->shape:[Lorg/chromium/gfx/mojom/Rect;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/gfx/mojom/Rect;

    iput-object v5, v2, Lorg/chromium/viz/mojom/FilterOperation;->shape:[Lorg/chromium/gfx/mojom/Rect;

    move v5, v4

    :goto_0
    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v1, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v2, Lorg/chromium/viz/mojom/FilterOperation;->shape:[Lorg/chromium/gfx/mojom/Rect;

    invoke-static {v6}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/viz/mojom/FilterOperation;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->type:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->amount:F

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->offset:Lorg/chromium/gfx/mojom/Point;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->dropShadowColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->imageFilter:Lorg/chromium/viz/mojom/PaintFilter;

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->matrix:[F

    const/16 v2, 0x14

    const/16 v4, 0x28

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([FIII)V

    iget v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->zoomInset:I

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->blurTileMode:I

    const/16 v2, 0x34

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/FilterOperation;->shape:[Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x38

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v3

    :goto_0
    iget-object v2, p0, Lorg/chromium/viz/mojom/FilterOperation;->shape:[Lorg/chromium/gfx/mojom/Rect;

    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v2, v2, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
