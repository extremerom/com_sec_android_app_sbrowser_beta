.class public final Lorg/chromium/blink/mojom/FrameVisualProperties;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public autoResizeEnabled:Z

.field public captureSequenceNumber:I

.field public compositingScaleFactor:F

.field public compositorViewport:Lorg/chromium/gfx/mojom/Rect;

.field public cssZoomFactor:D

.field public cursorAccessibilityScaleFactor:F

.field public isPinchGestureActive:Z

.field public localFrameSize:Lorg/chromium/gfx/mojom/Size;

.field public localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

.field public maxSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

.field public minSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

.field public pageScaleFactor:F

.field public rectInLocalRoot:Lorg/chromium/gfx/mojom/Rect;

.field public rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

.field public screenInfos:Lorg/chromium/display/mojom/ScreenInfos;

.field public visibleViewportSize:Lorg/chromium/gfx/mojom/Size;

.field public zoomLevel:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FrameVisualProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/FrameVisualProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x78

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->pageScaleFactor:F

    iput p1, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->compositingScaleFactor:F

    iput p1, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->cursorAccessibilityScaleFactor:F

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FrameVisualProperties;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/FrameVisualProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/FrameVisualProperties;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/FrameVisualProperties;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/display/mojom/ScreenInfos;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/display/mojom/ScreenInfos;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->screenInfos:Lorg/chromium/display/mojom/ScreenInfos;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->autoResizeEnabled:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->isPinchGestureActive:Z

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->captureSequenceNumber:I

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->zoomLevel:D

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->cssZoomFactor:D

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->pageScaleFactor:F

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->compositingScaleFactor:F

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->cursorAccessibilityScaleFactor:F

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->visibleViewportSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->minSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->maxSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/gfx/mojom/Rect;

    iput-object v5, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    move v5, v2

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    invoke-static {v6}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->compositorViewport:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->rectInLocalRoot:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->localFrameSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/LocalSurfaceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/LocalSurfaceId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FrameVisualProperties;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/blink/mojom/FrameVisualProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->screenInfos:Lorg/chromium/display/mojom/ScreenInfos;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->autoResizeEnabled:Z

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->isPinchGestureActive:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->captureSequenceNumber:I

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-wide v3, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->zoomLevel:D

    const/16 v0, 0x18

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v3, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->cssZoomFactor:D

    const/16 v0, 0x20

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->pageScaleFactor:F

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->compositingScaleFactor:F

    const/16 v3, 0x2c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->cursorAccessibilityScaleFactor:F

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->visibleViewportSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->minSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->maxSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x48

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x50

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->compositorViewport:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->rectInLocalRoot:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->localFrameSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/FrameVisualProperties;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v0, 0x70

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
