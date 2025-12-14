.class public final Lorg/chromium/viz/mojom/CompositorFrameMetadata;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public activationDependencies:[Lorg/chromium/viz/mojom/SurfaceId;

.field public beginFrameAck:Lorg/chromium/viz/mojom/BeginFrameAck;

.field public captureBounds:Lorg/chromium/viz/mojom/RegionCaptureBounds;

.field public contentColorUsage:I

.field public deadline:Lorg/chromium/viz/mojom/FrameDeadline;

.field public delegatedInkMetadata:Lorg/chromium/gfx/mojom/DelegatedInkMetadata;

.field public deviceScaleFactor:F

.field public displayTransformHint:I

.field public frameIntervalInputs:Lorg/chromium/viz/mojom/FrameIntervalInputs;

.field public frameToken:I

.field public hasSharedElementResources:Z

.field public isHandlingAnimation:Z

.field public isHandlingInteraction:Z

.field public isSoftware:Z

.field public latencyInfo:[Lorg/chromium/ui/mojom/LatencyInfo;

.field public mayContainVideo:Z

.field public mayThrottleIfUndrawnFrames:Z

.field public minPageScaleFactor:F

.field public offsetTagDefinitions:[Lorg/chromium/viz/mojom/OffsetTagDefinition;

.field public offsetTagValues:[Lorg/chromium/viz/mojom/OffsetTagValue;

.field public pageScaleFactor:F

.field public referencedSurfaces:[Lorg/chromium/viz/mojom/SurfaceRange;

.field public rootBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public rootScrollOffset:Lorg/chromium/gfx/mojom/PointF;

.field public screenshotDestination:Lorg/chromium/blink/mojom/SameDocNavigationScreenshotDestinationToken;

.field public scrollableViewportSize:Lorg/chromium/gfx/mojom/SizeF;

.field public selectionRect:Lorg/chromium/gfx/mojom/Rect;

.field public sendFrameTokenToEmbedder:Z

.field public topControlsVisibleHeight:F

.field public topControlsVisibleHeightSet:Z

.field public transitionDirectives:[Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;

.field public visibleViewportSize:Lorg/chromium/gfx/mojom/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xb0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xb0

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorFrameMetadata;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;

    invoke-direct {v1, v0}, Lorg/chromium/viz/mojom/CompositorFrameMetadata;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->deviceScaleFactor:F

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->pageScaleFactor:F

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->rootScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/SizeF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/SizeF;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->scrollableViewportSize:Lorg/chromium/gfx/mojom/SizeF;

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->visibleViewportSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->contentColorUsage:I

    invoke-static {v2}, Lorg/chromium/gfx/mojom/ContentColorUsage;->validate(I)V

    iget v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->contentColorUsage:I

    invoke-static {v2}, Lorg/chromium/gfx/mojom/ContentColorUsage;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->contentColorUsage:I

    const/16 v2, 0x2c

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->mayContainVideo:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->mayThrottleIfUndrawnFrames:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->isHandlingInteraction:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->isHandlingAnimation:Z

    const/4 v5, 0x4

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->sendFrameTokenToEmbedder:Z

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->topControlsVisibleHeightSet:Z

    const/4 v5, 0x6

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->hasSharedElementResources:Z

    const/4 v5, 0x7

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->isSoftware:Z

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->rootBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v2, 0x38

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->selectionRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x40

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/ui/mojom/LatencyInfo;

    iput-object v7, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->latencyInfo:[Lorg/chromium/ui/mojom/LatencyInfo;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->latencyInfo:[Lorg/chromium/ui/mojom/LatencyInfo;

    invoke-static {v8}, Lorg/chromium/ui/mojom/LatencyInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ui/mojom/LatencyInfo;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    const/16 v2, 0x48

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/viz/mojom/SurfaceRange;

    iput-object v7, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->referencedSurfaces:[Lorg/chromium/viz/mojom/SurfaceRange;

    move v7, v3

    :goto_1
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->referencedSurfaces:[Lorg/chromium/viz/mojom/SurfaceRange;

    invoke-static {v8}, Lorg/chromium/viz/mojom/SurfaceRange;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/SurfaceRange;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x50

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/viz/mojom/FrameDeadline;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FrameDeadline;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->deadline:Lorg/chromium/viz/mojom/FrameDeadline;

    const/16 v2, 0x58

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/viz/mojom/SurfaceId;

    iput-object v7, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->activationDependencies:[Lorg/chromium/viz/mojom/SurfaceId;

    move v7, v3

    :goto_2
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_3

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->activationDependencies:[Lorg/chromium/viz/mojom/SurfaceId;

    invoke-static {v8}, Lorg/chromium/viz/mojom/SurfaceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/SurfaceId;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0x60

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/viz/mojom/BeginFrameAck;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/BeginFrameAck;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->beginFrameAck:Lorg/chromium/viz/mojom/BeginFrameAck;

    const/16 v2, 0x68

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->frameToken:I

    const/16 v2, 0x6c

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->topControlsVisibleHeight:F

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->minPageScaleFactor:F

    const/16 v2, 0x74

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->displayTransformHint:I

    invoke-static {v2}, Lorg/chromium/gfx/mojom/OverlayTransform;->validate(I)V

    iget v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->displayTransformHint:I

    invoke-static {v2}, Lorg/chromium/gfx/mojom/OverlayTransform;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->displayTransformHint:I

    const/16 v2, 0x78

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/DelegatedInkMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/DelegatedInkMetadata;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->delegatedInkMetadata:Lorg/chromium/gfx/mojom/DelegatedInkMetadata;

    const/16 v2, 0x80

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;

    iput-object v7, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->transitionDirectives:[Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;

    move v7, v3

    :goto_3
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_4

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->transitionDirectives:[Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;

    invoke-static {v8}, Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const/16 v2, 0x88

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/viz/mojom/RegionCaptureBounds;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/RegionCaptureBounds;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->captureBounds:Lorg/chromium/viz/mojom/RegionCaptureBounds;

    const/16 v2, 0x90

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/blink/mojom/SameDocNavigationScreenshotDestinationToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SameDocNavigationScreenshotDestinationToken;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->screenshotDestination:Lorg/chromium/blink/mojom/SameDocNavigationScreenshotDestinationToken;

    const/16 v2, 0x98

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/viz/mojom/OffsetTagDefinition;

    iput-object v6, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagDefinitions:[Lorg/chromium/viz/mojom/OffsetTagDefinition;

    move v6, v3

    :goto_4
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_5

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagDefinitions:[Lorg/chromium/viz/mojom/OffsetTagDefinition;

    invoke-static {v7}, Lorg/chromium/viz/mojom/OffsetTagDefinition;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/OffsetTagDefinition;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/16 v2, 0xa0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/viz/mojom/OffsetTagValue;

    iput-object v5, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagValues:[Lorg/chromium/viz/mojom/OffsetTagValue;

    move v5, v3

    :goto_5
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_6

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagValues:[Lorg/chromium/viz/mojom/OffsetTagValue;

    invoke-static {v6}, Lorg/chromium/viz/mojom/OffsetTagValue;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/OffsetTagValue;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    const/16 v0, 0xa8

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/FrameIntervalInputs;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FrameIntervalInputs;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->frameIntervalInputs:Lorg/chromium/viz/mojom/FrameIntervalInputs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->deviceScaleFactor:F

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->pageScaleFactor:F

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->rootScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->scrollableViewportSize:Lorg/chromium/gfx/mojom/SizeF;

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->visibleViewportSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->contentColorUsage:I

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->mayContainVideo:Z

    const/16 v2, 0x2c

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->mayThrottleIfUndrawnFrames:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->isHandlingInteraction:Z

    const/4 v5, 0x2

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->isHandlingAnimation:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->sendFrameTokenToEmbedder:Z

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->topControlsVisibleHeightSet:Z

    const/4 v5, 0x5

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->hasSharedElementResources:Z

    const/4 v5, 0x6

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->isSoftware:Z

    const/4 v5, 0x7

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->rootBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->selectionRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->latencyInfo:[Lorg/chromium/ui/mojom/LatencyInfo;

    const/16 v2, 0x40

    const/4 v5, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_0
    iget-object v6, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->latencyInfo:[Lorg/chromium/ui/mojom/LatencyInfo;

    array-length v7, v6

    if-ge v2, v7, :cond_1

    aget-object v6, v6, v2

    mul-int/lit8 v7, v2, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->referencedSurfaces:[Lorg/chromium/viz/mojom/SurfaceRange;

    const/16 v2, 0x48

    if-nez v0, :cond_2

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_2
    iget-object v6, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->referencedSurfaces:[Lorg/chromium/viz/mojom/SurfaceRange;

    array-length v7, v6

    if-ge v2, v7, :cond_3

    aget-object v6, v6, v2

    mul-int/lit8 v7, v2, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->deadline:Lorg/chromium/viz/mojom/FrameDeadline;

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->activationDependencies:[Lorg/chromium/viz/mojom/SurfaceId;

    const/16 v2, 0x58

    if-nez v0, :cond_4

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_4
    iget-object v6, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->activationDependencies:[Lorg/chromium/viz/mojom/SurfaceId;

    array-length v7, v6

    if-ge v2, v7, :cond_5

    aget-object v6, v6, v2

    mul-int/lit8 v7, v2, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->beginFrameAck:Lorg/chromium/viz/mojom/BeginFrameAck;

    const/16 v2, 0x60

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->frameToken:I

    const/16 v2, 0x68

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->topControlsVisibleHeight:F

    const/16 v2, 0x6c

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->minPageScaleFactor:F

    const/16 v2, 0x70

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->displayTransformHint:I

    const/16 v2, 0x74

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->delegatedInkMetadata:Lorg/chromium/gfx/mojom/DelegatedInkMetadata;

    const/16 v2, 0x78

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->transitionDirectives:[Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;

    const/16 v2, 0x80

    if-nez v0, :cond_6

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_6
    iget-object v6, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->transitionDirectives:[Lorg/chromium/viz/mojom/CompositorFrameTransitionDirective;

    array-length v7, v6

    if-ge v2, v7, :cond_7

    aget-object v6, v6, v2

    mul-int/lit8 v7, v2, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->captureBounds:Lorg/chromium/viz/mojom/RegionCaptureBounds;

    const/16 v2, 0x88

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->screenshotDestination:Lorg/chromium/blink/mojom/SameDocNavigationScreenshotDestinationToken;

    const/16 v2, 0x90

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagDefinitions:[Lorg/chromium/viz/mojom/OffsetTagDefinition;

    const/16 v2, 0x98

    if-nez v0, :cond_8

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_8
    iget-object v4, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagDefinitions:[Lorg/chromium/viz/mojom/OffsetTagDefinition;

    array-length v6, v4

    if-ge v2, v6, :cond_9

    aget-object v4, v4, v2

    mul-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagValues:[Lorg/chromium/viz/mojom/OffsetTagValue;

    const/16 v2, 0xa0

    if-nez v0, :cond_a

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_a
    iget-object v4, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->offsetTagValues:[Lorg/chromium/viz/mojom/OffsetTagValue;

    array-length v5, v4

    if-ge v2, v5, :cond_b

    aget-object v4, v4, v2

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    iget-object p0, p0, Lorg/chromium/viz/mojom/CompositorFrameMetadata;->frameIntervalInputs:Lorg/chromium/viz/mojom/FrameIntervalInputs;

    const/16 v0, 0xa8

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
