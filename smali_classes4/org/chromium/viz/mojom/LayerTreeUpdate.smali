.class public final Lorg/chromium/viz/mojom/LayerTreeUpdate;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public animationTimelines:[Lorg/chromium/viz/mojom/AnimationTimeline;

.field public backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public beginFrameArgs:Lorg/chromium/viz/mojom/BeginFrameArgs;

.field public clipNodes:[Lorg/chromium/viz/mojom/ClipNode;

.field public deviceScaleFactor:F

.field public deviceViewport:Lorg/chromium/gfx/mojom/Rect;

.field public effectNodes:[Lorg/chromium/viz/mojom/EffectNode;

.field public externalPageScaleFactor:F

.field public innerScroll:I

.field public layerOrder:[I

.field public layers:[Lorg/chromium/viz/mojom/Layer;

.field public localSurfaceIdFromParent:Lorg/chromium/viz/mojom/LocalSurfaceId;

.field public maxPageScaleFactor:F

.field public minPageScaleFactor:F

.field public numClipNodes:I

.field public numEffectNodes:I

.field public numScrollNodes:I

.field public numTransformNodes:I

.field public outerClip:I

.field public outerScroll:I

.field public overscrollElasticityTransform:I

.field public pageScaleFactor:F

.field public pageScaleTransform:I

.field public paintedDeviceScaleFactor:F

.field public removedAnimationTimelines:[I

.field public scrollNodes:[Lorg/chromium/viz/mojom/ScrollNode;

.field public sourceFrameNumber:I

.field public surfaceRanges:[Lorg/chromium/viz/mojom/SurfaceRange;

.field public tilings:[Lorg/chromium/viz/mojom/Tiling;

.field public traceId:J

.field public transformNodes:[Lorg/chromium/viz/mojom/TransformNode;

.field public transformTreeUpdate:Lorg/chromium/viz/mojom/TransformTreeUpdate;

.field public viewportDamageRect:Lorg/chromium/gfx/mojom/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xd0

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/LayerTreeUpdate;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/viz/mojom/LayerTreeUpdate;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;

    invoke-direct {v2, v1}, Lorg/chromium/viz/mojom/LayerTreeUpdate;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/viz/mojom/BeginFrameArgs;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/BeginFrameArgs;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->beginFrameArgs:Lorg/chromium/viz/mojom/BeginFrameArgs;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->sourceFrameNumber:I

    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->pageScaleFactor:F

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->traceId:J

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->minPageScaleFactor:F

    const/16 v4, 0x24

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->maxPageScaleFactor:F

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->externalPageScaleFactor:F

    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->deviceScaleFactor:F

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->deviceViewport:Lorg/chromium/gfx/mojom/Rect;

    const/16 v4, 0x38

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->paintedDeviceScaleFactor:F

    const/16 v4, 0x3c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->overscrollElasticityTransform:I

    const/16 v4, 0x40

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/viz/mojom/LocalSurfaceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/LocalSurfaceId;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->localSurfaceIdFromParent:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v4, 0x48

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v4, 0x50

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->pageScaleTransform:I

    const/16 v4, 0x54

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->innerScroll:I

    const/16 v4, 0x58

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->outerClip:I

    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->outerScroll:I

    const/16 v4, 0x60

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->viewportDamageRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v4, 0x68

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/viz/mojom/Layer;

    iput-object v8, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->layers:[Lorg/chromium/viz/mojom/Layer;

    move v8, v3

    :goto_0
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_1

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->layers:[Lorg/chromium/viz/mojom/Layer;

    invoke-static {v9}, Lorg/chromium/viz/mojom/Layer;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/Layer;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    const/16 v4, 0x70

    invoke-virtual {p0, v4, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->layerOrder:[I

    const/16 v4, 0x78

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/viz/mojom/TransformTreeUpdate;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/TransformTreeUpdate;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->transformTreeUpdate:Lorg/chromium/viz/mojom/TransformTreeUpdate;

    const/16 v4, 0x80

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/viz/mojom/TransformNode;

    iput-object v8, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->transformNodes:[Lorg/chromium/viz/mojom/TransformNode;

    move v8, v3

    :goto_1
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_2

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->transformNodes:[Lorg/chromium/viz/mojom/TransformNode;

    invoke-static {v9}, Lorg/chromium/viz/mojom/TransformNode;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/TransformNode;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x88

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/viz/mojom/ClipNode;

    iput-object v8, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->clipNodes:[Lorg/chromium/viz/mojom/ClipNode;

    move v8, v3

    :goto_2
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_3

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->clipNodes:[Lorg/chromium/viz/mojom/ClipNode;

    invoke-static {v9}, Lorg/chromium/viz/mojom/ClipNode;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ClipNode;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x90

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/viz/mojom/EffectNode;

    iput-object v8, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->effectNodes:[Lorg/chromium/viz/mojom/EffectNode;

    move v8, v3

    :goto_3
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_4

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->effectNodes:[Lorg/chromium/viz/mojom/EffectNode;

    invoke-static {v9}, Lorg/chromium/viz/mojom/EffectNode;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/EffectNode;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/16 v4, 0x98

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/viz/mojom/ScrollNode;

    iput-object v8, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->scrollNodes:[Lorg/chromium/viz/mojom/ScrollNode;

    move v8, v3

    :goto_4
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_5

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->scrollNodes:[Lorg/chromium/viz/mojom/ScrollNode;

    invoke-static {v9}, Lorg/chromium/viz/mojom/ScrollNode;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ScrollNode;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/16 v4, 0xa0

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numTransformNodes:I

    const/16 v4, 0xa4

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numClipNodes:I

    const/16 v4, 0xa8

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numEffectNodes:I

    const/16 v4, 0xac

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numScrollNodes:I

    const/16 v4, 0xb0

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/viz/mojom/Tiling;

    iput-object v8, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->tilings:[Lorg/chromium/viz/mojom/Tiling;

    move v8, v3

    :goto_5
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_6

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->tilings:[Lorg/chromium/viz/mojom/Tiling;

    invoke-static {v9}, Lorg/chromium/viz/mojom/Tiling;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/Tiling;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    const/16 v4, 0xb8

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_7

    iput-object v0, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->surfaceRanges:[Lorg/chromium/viz/mojom/SurfaceRange;

    goto :goto_7

    :cond_7
    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/viz/mojom/SurfaceRange;

    iput-object v8, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->surfaceRanges:[Lorg/chromium/viz/mojom/SurfaceRange;

    move v8, v3

    :goto_6
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_8

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->surfaceRanges:[Lorg/chromium/viz/mojom/SurfaceRange;

    invoke-static {v9}, Lorg/chromium/viz/mojom/SurfaceRange;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/SurfaceRange;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    const/16 v4, 0xc0

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_9

    iput-object v0, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->animationTimelines:[Lorg/chromium/viz/mojom/AnimationTimeline;

    goto :goto_9

    :cond_9
    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/viz/mojom/AnimationTimeline;

    iput-object v7, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->animationTimelines:[Lorg/chromium/viz/mojom/AnimationTimeline;

    move v7, v3

    :goto_8
    iget v8, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_a

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->animationTimelines:[Lorg/chromium/viz/mojom/AnimationTimeline;

    invoke-static {v8}, Lorg/chromium/viz/mojom/AnimationTimeline;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/AnimationTimeline;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/viz/mojom/LayerTreeUpdate;->removedAnimationTimelines:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_a
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->beginFrameArgs:Lorg/chromium/viz/mojom/BeginFrameArgs;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->sourceFrameNumber:I

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->pageScaleFactor:F

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-wide v3, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->traceId:J

    const/16 v0, 0x18

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->minPageScaleFactor:F

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->maxPageScaleFactor:F

    const/16 v3, 0x24

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->externalPageScaleFactor:F

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->deviceScaleFactor:F

    const/16 v3, 0x2c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->deviceViewport:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->paintedDeviceScaleFactor:F

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->overscrollElasticityTransform:I

    const/16 v3, 0x3c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->localSurfaceIdFromParent:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v3, 0x40

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v3, 0x48

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->pageScaleTransform:I

    const/16 v3, 0x50

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->innerScroll:I

    const/16 v3, 0x54

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->outerClip:I

    const/16 v3, 0x58

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->outerScroll:I

    const/16 v3, 0x5c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->viewportDamageRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x60

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->layers:[Lorg/chromium/viz/mojom/Layer;

    const/16 v3, 0x68

    const/4 v5, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->layers:[Lorg/chromium/viz/mojom/Layer;

    array-length v7, v6

    if-ge v3, v7, :cond_1

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->layerOrder:[I

    const/16 v3, 0x70

    invoke-virtual {p1, v0, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->transformTreeUpdate:Lorg/chromium/viz/mojom/TransformTreeUpdate;

    const/16 v3, 0x78

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->transformNodes:[Lorg/chromium/viz/mojom/TransformNode;

    const/16 v3, 0x80

    if-nez v0, :cond_2

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_2
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->transformNodes:[Lorg/chromium/viz/mojom/TransformNode;

    array-length v7, v6

    if-ge v3, v7, :cond_3

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->clipNodes:[Lorg/chromium/viz/mojom/ClipNode;

    const/16 v3, 0x88

    if-nez v0, :cond_4

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_4
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->clipNodes:[Lorg/chromium/viz/mojom/ClipNode;

    array-length v7, v6

    if-ge v3, v7, :cond_5

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->effectNodes:[Lorg/chromium/viz/mojom/EffectNode;

    const/16 v3, 0x90

    if-nez v0, :cond_6

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_6
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->effectNodes:[Lorg/chromium/viz/mojom/EffectNode;

    array-length v7, v6

    if-ge v3, v7, :cond_7

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->scrollNodes:[Lorg/chromium/viz/mojom/ScrollNode;

    const/16 v3, 0x98

    if-nez v0, :cond_8

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_8
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->scrollNodes:[Lorg/chromium/viz/mojom/ScrollNode;

    array-length v7, v6

    if-ge v3, v7, :cond_9

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numTransformNodes:I

    const/16 v3, 0xa0

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numClipNodes:I

    const/16 v3, 0xa4

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numEffectNodes:I

    const/16 v3, 0xa8

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->numScrollNodes:I

    const/16 v3, 0xac

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->tilings:[Lorg/chromium/viz/mojom/Tiling;

    const/16 v3, 0xb0

    if-nez v0, :cond_a

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_a
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->tilings:[Lorg/chromium/viz/mojom/Tiling;

    array-length v7, v6

    if-ge v3, v7, :cond_b

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->surfaceRanges:[Lorg/chromium/viz/mojom/SurfaceRange;

    const/16 v3, 0xb8

    if-nez v0, :cond_c

    invoke-virtual {p1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_d

    :cond_c
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_c
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->surfaceRanges:[Lorg/chromium/viz/mojom/SurfaceRange;

    array-length v7, v6

    if-ge v3, v7, :cond_d

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    iget-object v0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->animationTimelines:[Lorg/chromium/viz/mojom/AnimationTimeline;

    const/16 v3, 0xc0

    if-nez v0, :cond_e

    invoke-virtual {p1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_f

    :cond_e
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_e
    iget-object v6, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->animationTimelines:[Lorg/chromium/viz/mojom/AnimationTimeline;

    array-length v7, v6

    if-ge v3, v7, :cond_f

    aget-object v6, v6, v3

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    iget-object p0, p0, Lorg/chromium/viz/mojom/LayerTreeUpdate;->removedAnimationTimelines:[I

    const/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
