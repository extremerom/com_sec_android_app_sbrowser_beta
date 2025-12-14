.class public final Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public backdropFilterQuality:F

.field public filtersOrigin:Lorg/chromium/gfx/mojom/PointF;

.field public filtersScale:Lorg/chromium/gfx/mojom/Vector2dF;

.field public forceAntiAliasingOff:Z

.field public intersectsDamageUnder:Z

.field public maskResourceId:Lorg/chromium/viz/mojom/ResourceId;

.field public maskTextureSize:Lorg/chromium/gfx/mojom/Size;

.field public maskUvRect:Lorg/chromium/gfx/mojom/RectF;

.field public renderPassId:Lorg/chromium/viz/mojom/CompositorRenderPassId;

.field public texCoordRect:Lorg/chromium/gfx/mojom/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;

    invoke-direct {v1, v0}, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/CompositorRenderPassId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorRenderPassId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->renderPassId:Lorg/chromium/viz/mojom/CompositorRenderPassId;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/ResourceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ResourceId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->maskResourceId:Lorg/chromium/viz/mojom/ResourceId;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/RectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/RectF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->maskUvRect:Lorg/chromium/gfx/mojom/RectF;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->maskTextureSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Vector2dF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Vector2dF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->filtersScale:Lorg/chromium/gfx/mojom/Vector2dF;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->filtersOrigin:Lorg/chromium/gfx/mojom/PointF;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/RectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/RectF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->texCoordRect:Lorg/chromium/gfx/mojom/RectF;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->forceAntiAliasingOff:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->intersectsDamageUnder:Z

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->backdropFilterQuality:F
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

    sget-object v0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->renderPassId:Lorg/chromium/viz/mojom/CompositorRenderPassId;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->maskResourceId:Lorg/chromium/viz/mojom/ResourceId;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->maskUvRect:Lorg/chromium/gfx/mojom/RectF;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->maskTextureSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->filtersScale:Lorg/chromium/gfx/mojom/Vector2dF;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->filtersOrigin:Lorg/chromium/gfx/mojom/PointF;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->texCoordRect:Lorg/chromium/gfx/mojom/RectF;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->forceAntiAliasingOff:Z

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->intersectsDamageUnder:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget p0, p0, Lorg/chromium/viz/mojom/CompositorRenderPassQuadState;->backdropFilterQuality:F

    const/16 v0, 0x44

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    return-void
.end method
