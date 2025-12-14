.class public final Lorg/chromium/viz/mojom/EffectNode;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public backdropFilterBounds:Lorg/chromium/gfx/mojom/RRectF;

.field public backdropFilterQuality:F

.field public backdropFilters:Lorg/chromium/viz/mojom/FilterOperations;

.field public backdropMaskElementId:Lorg/chromium/cc/mojom/ElementId;

.field public blendMode:I

.field public cacheRenderSurface:Z

.field public clipId:I

.field public copyOutputRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

.field public doubleSided:Z

.field public elementId:Lorg/chromium/cc/mojom/ElementId;

.field public filters:Lorg/chromium/viz/mojom/FilterOperations;

.field public has2dScaleTransform:Z

.field public hasPotentialBackdropFilterAnimation:Z

.field public hasPotentialFilterAnimation:Z

.field public hasPotentialOpacityAnimation:Z

.field public hasRenderSurface:Z

.field public id:I

.field public isFastRoundedCorner:Z

.field public mayHaveBackdropEffect:Z

.field public opacity:F

.field public parentId:I

.field public subtreeCaptureId:Lorg/chromium/viz/mojom/SubtreeCaptureId;

.field public subtreeHasCopyRequest:Z

.field public subtreeHidden:Z

.field public subtreeSize:Lorg/chromium/gfx/mojom/Size;

.field public surfaceContentsScale:Lorg/chromium/gfx/mojom/Vector2dF;

.field public targetId:I

.field public transformId:I

.field public trilinearFiltering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/EffectNode;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/EffectNode;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x78

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/EffectNode;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/viz/mojom/EffectNode;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/viz/mojom/EffectNode;

    invoke-direct {v1, v0}, Lorg/chromium/viz/mojom/EffectNode;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->id:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->parentId:I

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->transformId:I

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->clipId:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/cc/mojom/ElementId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cc/mojom/ElementId;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->elementId:Lorg/chromium/cc/mojom/ElementId;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->opacity:F

    const/16 v2, 0x24

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/EffectNode;->hasRenderSurface:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/EffectNode;->cacheRenderSurface:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v1, Lorg/chromium/viz/mojom/EffectNode;->doubleSided:Z

    const/4 v6, 0x3

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/viz/mojom/EffectNode;->trilinearFiltering:Z

    const/4 v7, 0x4

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/viz/mojom/EffectNode;->subtreeHidden:Z

    const/4 v7, 0x5

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/viz/mojom/EffectNode;->hasPotentialFilterAnimation:Z

    const/4 v7, 0x6

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/viz/mojom/EffectNode;->hasPotentialBackdropFilterAnimation:Z

    const/4 v7, 0x7

    invoke-virtual {p0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/viz/mojom/EffectNode;->hasPotentialOpacityAnimation:Z

    const/16 v2, 0x25

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/viz/mojom/EffectNode;->subtreeHasCopyRequest:Z

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v1, Lorg/chromium/viz/mojom/EffectNode;->isFastRoundedCorner:Z

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/EffectNode;->mayHaveBackdropEffect:Z

    invoke-virtual {p0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/viz/mojom/EffectNode;->has2dScaleTransform:Z

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Vector2dF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Vector2dF;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->surfaceContentsScale:Lorg/chromium/gfx/mojom/Vector2dF;

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/viz/mojom/SubtreeCaptureId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/SubtreeCaptureId;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->subtreeCaptureId:Lorg/chromium/viz/mojom/SubtreeCaptureId;

    const/16 v2, 0x38

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->subtreeSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->blendMode:I

    const/16 v2, 0x44

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->targetId:I

    const/16 v2, 0x48

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/viz/mojom/FilterOperations;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FilterOperations;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->filters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v2, 0x50

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/viz/mojom/FilterOperations;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FilterOperations;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->backdropFilters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v2, 0x58

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/RRectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/RRectF;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->backdropFilterBounds:Lorg/chromium/gfx/mojom/RRectF;

    const/16 v2, 0x60

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/EffectNode;->backdropFilterQuality:F

    const/16 v2, 0x68

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/cc/mojom/ElementId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cc/mojom/ElementId;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/EffectNode;->backdropMaskElementId:Lorg/chromium/cc/mojom/ElementId;

    const/16 v2, 0x70

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    iget v5, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/viz/mojom/CopyOutputRequest;

    iput-object v5, v1, Lorg/chromium/viz/mojom/EffectNode;->copyOutputRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    move v5, v4

    :goto_0
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/viz/mojom/EffectNode;->copyOutputRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    invoke-static {v6}, Lorg/chromium/viz/mojom/CopyOutputRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CopyOutputRequest;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/viz/mojom/EffectNode;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->id:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->parentId:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->transformId:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->clipId:I

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->elementId:Lorg/chromium/cc/mojom/ElementId;

    const/16 v2, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->opacity:F

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->hasRenderSurface:Z

    const/16 v2, 0x24

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->cacheRenderSurface:Z

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->doubleSided:Z

    const/4 v5, 0x2

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->trilinearFiltering:Z

    const/4 v6, 0x3

    invoke-virtual {p1, v0, v2, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->subtreeHidden:Z

    const/4 v7, 0x4

    invoke-virtual {p1, v0, v2, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->hasPotentialFilterAnimation:Z

    const/4 v7, 0x5

    invoke-virtual {p1, v0, v2, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->hasPotentialBackdropFilterAnimation:Z

    const/4 v7, 0x6

    invoke-virtual {p1, v0, v2, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->hasPotentialOpacityAnimation:Z

    const/4 v7, 0x7

    invoke-virtual {p1, v0, v2, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->subtreeHasCopyRequest:Z

    const/16 v2, 0x25

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->isFastRoundedCorner:Z

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->mayHaveBackdropEffect:Z

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/EffectNode;->has2dScaleTransform:Z

    invoke-virtual {p1, v0, v2, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->surfaceContentsScale:Lorg/chromium/gfx/mojom/Vector2dF;

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->subtreeCaptureId:Lorg/chromium/viz/mojom/SubtreeCaptureId;

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->subtreeSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->blendMode:I

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->targetId:I

    const/16 v2, 0x44

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->filters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v2, 0x48

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->backdropFilters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->backdropFilterBounds:Lorg/chromium/gfx/mojom/RRectF;

    const/16 v2, 0x58

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/EffectNode;->backdropFilterQuality:F

    const/16 v2, 0x60

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->backdropMaskElementId:Lorg/chromium/cc/mojom/ElementId;

    const/16 v2, 0x68

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/EffectNode;->copyOutputRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    const/16 v2, 0x70

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v4

    :goto_0
    iget-object v2, p0, Lorg/chromium/viz/mojom/EffectNode;->copyOutputRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
