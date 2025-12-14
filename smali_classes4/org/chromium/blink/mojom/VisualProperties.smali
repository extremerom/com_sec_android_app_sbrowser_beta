.class public final Lorg/chromium/blink/mojom/VisualProperties;
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

.field public browserControlsParams:Lorg/chromium/cc/mojom/BrowserControlsParams;

.field public captureSequenceNumber:I

.field public compositingScaleFactor:F

.field public compositorViewportPixelRect:Lorg/chromium/gfx/mojom/Rect;

.field public cssZoomFactor:D

.field public cursorAccessibilityScaleFactor:F

.field public displayMode:I

.field public isFullscreenGranted:Z

.field public isPinchGestureActive:Z

.field public localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

.field public maxSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

.field public minSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

.field public newSizeDevicePx:Lorg/chromium/gfx/mojom/Size;

.field public pageScaleFactor:F

.field public resizable:Z

.field public rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

.field public screenInfos:Lorg/chromium/display/mojom/ScreenInfos;

.field public scrollFocusedNodeIntoView:Z

.field public virtualKeyboardResizeHeightDevicePx:I

.field public visibleViewportSizeDevicePx:Lorg/chromium/gfx/mojom/Size;

.field public windowControlsOverlayRect:Lorg/chromium/gfx/mojom/Rect;

.field public windowShowState:I

.field public zoomLevel:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/VisualProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/VisualProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x88

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/VisualProperties;->autoResizeEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->resizable:Z

    iput p1, p0, Lorg/chromium/blink/mojom/VisualProperties;->displayMode:I

    iput p1, p0, Lorg/chromium/blink/mojom/VisualProperties;->windowShowState:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/chromium/blink/mojom/VisualProperties;->pageScaleFactor:F

    iput p1, p0, Lorg/chromium/blink/mojom/VisualProperties;->compositingScaleFactor:F

    iput p1, p0, Lorg/chromium/blink/mojom/VisualProperties;->cursorAccessibilityScaleFactor:F

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/VisualProperties;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/VisualProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/VisualProperties;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/VisualProperties;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/display/mojom/ScreenInfos;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/display/mojom/ScreenInfos;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->screenInfos:Lorg/chromium/display/mojom/ScreenInfos;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/VisualProperties;->autoResizeEnabled:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/VisualProperties;->resizable:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/VisualProperties;->scrollFocusedNodeIntoView:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/VisualProperties;->isFullscreenGranted:Z

    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->isPinchGestureActive:Z

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->displayMode:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/DisplayMode;->validate(I)V

    iget v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->displayMode:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/DisplayMode;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->displayMode:I

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->minSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->maxSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->newSizeDevicePx:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->visibleViewportSizeDevicePx:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->compositorViewportPixelRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/cc/mojom/BrowserControlsParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cc/mojom/BrowserControlsParams;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->browserControlsParams:Lorg/chromium/cc/mojom/BrowserControlsParams;

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/LocalSurfaceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/LocalSurfaceId;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v3, 0x50

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->windowShowState:I

    invoke-static {v3}, Lorg/chromium/ui/mojom/WindowShowState;->validate(I)V

    iget v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->windowShowState:I

    invoke-static {v3}, Lorg/chromium/ui/mojom/WindowShowState;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->windowShowState:I

    const/16 v3, 0x54

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->captureSequenceNumber:I

    const/16 v3, 0x58

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->zoomLevel:D

    const/16 v3, 0x60

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->cssZoomFactor:D

    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->pageScaleFactor:F

    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->compositingScaleFactor:F

    const/16 v3, 0x70

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->cursorAccessibilityScaleFactor:F

    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/VisualProperties;->virtualKeyboardResizeHeightDevicePx:I

    const/16 v3, 0x78

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/gfx/mojom/Rect;

    iput-object v5, v1, Lorg/chromium/blink/mojom/VisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    move v5, v2

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/blink/mojom/VisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    invoke-static {v6}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/VisualProperties;->windowControlsOverlayRect:Lorg/chromium/gfx/mojom/Rect;
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

    sget-object v0, Lorg/chromium/blink/mojom/VisualProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->screenInfos:Lorg/chromium/display/mojom/ScreenInfos;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->autoResizeEnabled:Z

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->resizable:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->scrollFocusedNodeIntoView:Z

    const/4 v5, 0x2

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->isFullscreenGranted:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->isPinchGestureActive:Z

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->displayMode:I

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->minSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->maxSizeForAutoResize:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->newSizeDevicePx:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->visibleViewportSizeDevicePx:Lorg/chromium/gfx/mojom/Size;

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->compositorViewportPixelRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->browserControlsParams:Lorg/chromium/cc/mojom/BrowserControlsParams;

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v3, 0x48

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->windowShowState:I

    const/16 v3, 0x50

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->captureSequenceNumber:I

    const/16 v3, 0x54

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-wide v3, p0, Lorg/chromium/blink/mojom/VisualProperties;->zoomLevel:D

    const/16 v0, 0x58

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-wide v3, p0, Lorg/chromium/blink/mojom/VisualProperties;->cssZoomFactor:D

    const/16 v0, 0x60

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->pageScaleFactor:F

    const/16 v3, 0x68

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->compositingScaleFactor:F

    const/16 v3, 0x6c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->cursorAccessibilityScaleFactor:F

    const/16 v3, 0x70

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->virtualKeyboardResizeHeightDevicePx:I

    const/16 v3, 0x74

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/VisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x78

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
    iget-object v4, p0, Lorg/chromium/blink/mojom/VisualProperties;->rootWidgetViewportSegments:[Lorg/chromium/gfx/mojom/Rect;

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
    iget-object p0, p0, Lorg/chromium/blink/mojom/VisualProperties;->windowControlsOverlayRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x80

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
