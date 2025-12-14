.class public final Lorg/chromium/viz/mojom/SurfaceQuadState;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowDrawOutsideQuadRect:Z

.field public allowMerge:Z

.field public defaultBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public isReflection:Z

.field public overrideChildDynamicRangeLimit:Lorg/chromium/cc/mojom/DynamicRangeLimit;

.field public overrideChildFilterQuality:Ljava/lang/Integer;

.field public stretchContentToFillBounds:Z

.field public surfaceRange:Lorg/chromium/viz/mojom/SurfaceRange;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/SurfaceQuadState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/SurfaceQuadState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/SurfaceQuadState;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/viz/mojom/SurfaceQuadState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/viz/mojom/SurfaceQuadState;

    invoke-direct {v2, v1}, Lorg/chromium/viz/mojom/SurfaceQuadState;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/viz/mojom/SurfaceRange;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/SurfaceRange;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->surfaceRange:Lorg/chromium/viz/mojom/SurfaceRange;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->defaultBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->stretchContentToFillBounds:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->isReflection:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->allowMerge:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->allowDrawOutsideQuadRect:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->overrideChildFilterQuality:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-object v0, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->overrideChildFilterQuality:Ljava/lang/Integer;

    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/cc/mojom/DynamicRangeLimit;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cc/mojom/DynamicRangeLimit;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/viz/mojom/SurfaceQuadState;->overrideChildDynamicRangeLimit:Lorg/chromium/cc/mojom/DynamicRangeLimit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/viz/mojom/SurfaceQuadState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->surfaceRange:Lorg/chromium/viz/mojom/SurfaceRange;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->defaultBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->stretchContentToFillBounds:Z

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->isReflection:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->allowMerge:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->allowDrawOutsideQuadRect:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->overrideChildFilterQuality:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v4, v1, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0x1c

    invoke-virtual {p1, v2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/viz/mojom/SurfaceQuadState;->overrideChildDynamicRangeLimit:Lorg/chromium/cc/mojom/DynamicRangeLimit;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
