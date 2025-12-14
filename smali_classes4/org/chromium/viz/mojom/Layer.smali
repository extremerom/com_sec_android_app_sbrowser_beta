.class public final Lorg/chromium/viz/mojom/Layer;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public bounds:Lorg/chromium/gfx/mojom/Size;

.field public clipTreeIndex:I

.field public contentsOpaque:Z

.field public contentsOpaqueForText:Z

.field public effectTreeIndex:I

.field public elementId:Lorg/chromium/cc/mojom/ElementId;

.field public id:J

.field public isBackdropFilterMask:Z

.field public isDrawable:Z

.field public layerExtra:Lorg/chromium/viz/mojom/LayerExtra;

.field public offsetToTransformParent:Lorg/chromium/gfx/mojom/Vector2dF;

.field public safeOpaqueBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public scrollTreeIndex:I

.field public solidColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public transformTreeIndex:I

.field public type:I

.field public updateRect:Lorg/chromium/gfx/mojom/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/Layer;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/Layer;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/Layer;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/viz/mojom/Layer;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/viz/mojom/Layer;

    invoke-direct {v1, v0}, Lorg/chromium/viz/mojom/Layer;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/viz/mojom/Layer;->id:J

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/Layer;->type:I

    invoke-static {v0}, Lorg/chromium/cc/mojom/LayerType;->validate(I)V

    iget v0, v1, Lorg/chromium/viz/mojom/Layer;->type:I

    invoke-static {v0}, Lorg/chromium/cc/mojom/LayerType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/Layer;->type:I

    const/16 v0, 0x14

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/viz/mojom/Layer;->contentsOpaque:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/Layer;->contentsOpaqueForText:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/Layer;->isDrawable:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/viz/mojom/Layer;->isBackdropFilterMask:Z

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->bounds:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->safeOpaqueBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->solidColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/cc/mojom/ElementId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cc/mojom/ElementId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->elementId:Lorg/chromium/cc/mojom/ElementId;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->updateRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Vector2dF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Vector2dF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->offsetToTransformParent:Lorg/chromium/gfx/mojom/Vector2dF;

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/Layer;->transformTreeIndex:I

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/Layer;->clipTreeIndex:I

    const/16 v0, 0x58

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/Layer;->effectTreeIndex:I

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/Layer;->scrollTreeIndex:I

    const/16 v0, 0x60

    invoke-static {p0, v0}, Lorg/chromium/viz/mojom/LayerExtra;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/viz/mojom/LayerExtra;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/Layer;->layerExtra:Lorg/chromium/viz/mojom/LayerExtra;
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
    .locals 5

    sget-object v0, Lorg/chromium/viz/mojom/Layer;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/viz/mojom/Layer;->id:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v0, p0, Lorg/chromium/viz/mojom/Layer;->type:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/Layer;->contentsOpaque:Z

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/Layer;->contentsOpaqueForText:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/Layer;->isDrawable:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/Layer;->isBackdropFilterMask:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/Layer;->bounds:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/Layer;->backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/Layer;->safeOpaqueBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/Layer;->solidColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/Layer;->elementId:Lorg/chromium/cc/mojom/ElementId;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/Layer;->updateRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/Layer;->offsetToTransformParent:Lorg/chromium/gfx/mojom/Vector2dF;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/Layer;->transformTreeIndex:I

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/Layer;->clipTreeIndex:I

    const/16 v1, 0x54

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/Layer;->effectTreeIndex:I

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/Layer;->scrollTreeIndex:I

    const/16 v1, 0x5c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/viz/mojom/Layer;->layerExtra:Lorg/chromium/viz/mojom/LayerExtra;

    const/16 v0, 0x60

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    return-void
.end method
