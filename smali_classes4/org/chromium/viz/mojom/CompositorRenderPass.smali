.class public final Lorg/chromium/viz/mojom/CompositorRenderPass;
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

.field public backdropFilters:Lorg/chromium/viz/mojom/FilterOperations;

.field public cacheRenderPass:Z

.field public copyRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

.field public damageRect:Lorg/chromium/gfx/mojom/Rect;

.field public filters:Lorg/chromium/viz/mojom/FilterOperations;

.field public generateMipmap:Z

.field public hasDamageFromContributingContent:Z

.field public hasPerQuadDamage:Z

.field public hasTransparentBackground:Z

.field public id:Lorg/chromium/viz/mojom/CompositorRenderPassId;

.field public outputRect:Lorg/chromium/gfx/mojom/Rect;

.field public quadList:[Lorg/chromium/viz/mojom/DrawQuad;

.field public subtreeCaptureId:Lorg/chromium/viz/mojom/SubtreeCaptureId;

.field public subtreeSize:Lorg/chromium/gfx/mojom/Size;

.field public transformToRootTarget:Lorg/chromium/gfx/mojom/Transform;

.field public viewTransitionElementResourceId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/CompositorRenderPass;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/CompositorRenderPass;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->cacheRenderPass:Z

    iput-boolean p1, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->hasDamageFromContributingContent:Z

    iput-boolean p1, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->generateMipmap:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorRenderPass;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/viz/mojom/CompositorRenderPass;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/viz/mojom/CompositorRenderPass;

    invoke-direct {v1, v0}, Lorg/chromium/viz/mojom/CompositorRenderPass;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/CompositorRenderPassId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorRenderPassId;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->id:Lorg/chromium/viz/mojom/CompositorRenderPassId;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->outputRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->damageRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Transform;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Transform;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->transformToRootTarget:Lorg/chromium/gfx/mojom/Transform;

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/FilterOperations;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FilterOperations;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->filters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/FilterOperations;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FilterOperations;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->backdropFilters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/RRectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/RRectF;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->backdropFilterBounds:Lorg/chromium/gfx/mojom/RRectF;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/SubtreeCaptureId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/SubtreeCaptureId;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->subtreeCaptureId:Lorg/chromium/viz/mojom/SubtreeCaptureId;

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->subtreeSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->viewTransitionElementResourceId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    const/16 v3, 0x58

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->hasTransparentBackground:Z

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->cacheRenderPass:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->hasDamageFromContributingContent:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->generateMipmap:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->hasPerQuadDamage:Z

    const/16 v3, 0x60

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/viz/mojom/CopyOutputRequest;

    iput-object v6, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->copyRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->copyRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    invoke-static {v7}, Lorg/chromium/viz/mojom/CopyOutputRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CopyOutputRequest;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v3, 0x68

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/viz/mojom/DrawQuad;

    iput-object v5, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->quadList:[Lorg/chromium/viz/mojom/DrawQuad;

    move v5, v2

    :goto_1
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/viz/mojom/CompositorRenderPass;->quadList:[Lorg/chromium/viz/mojom/DrawQuad;

    invoke-static {v6}, Lorg/chromium/viz/mojom/DrawQuad;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/DrawQuad;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

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
    .locals 7

    sget-object v0, Lorg/chromium/viz/mojom/CompositorRenderPass;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->id:Lorg/chromium/viz/mojom/CompositorRenderPassId;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->outputRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->damageRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->transformToRootTarget:Lorg/chromium/gfx/mojom/Transform;

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->filters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->backdropFilters:Lorg/chromium/viz/mojom/FilterOperations;

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->backdropFilterBounds:Lorg/chromium/gfx/mojom/RRectF;

    const/16 v3, 0x38

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->subtreeCaptureId:Lorg/chromium/viz/mojom/SubtreeCaptureId;

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->subtreeSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x48

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->viewTransitionElementResourceId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    const/16 v3, 0x50

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->hasTransparentBackground:Z

    const/16 v3, 0x58

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->cacheRenderPass:Z

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->hasDamageFromContributingContent:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->generateMipmap:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->hasPerQuadDamage:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->copyRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    const/4 v3, -0x1

    const/16 v4, 0x60

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->copyRequests:[Lorg/chromium/viz/mojom/CopyOutputRequest;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->quadList:[Lorg/chromium/viz/mojom/DrawQuad;

    const/16 v4, 0x68

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/chromium/viz/mojom/CompositorRenderPass;->quadList:[Lorg/chromium/viz/mojom/DrawQuad;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
