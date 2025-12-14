.class public final Lorg/chromium/cc/mojom/RenderFrameMetadata;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bottomControlsHeight:F

.field public bottomControlsMinHeightOffset:F

.field public bottomControlsShownRatio:F

.field public delegatedInkMetadata:Lorg/chromium/cc/mojom/DelegatedInkBrowserMetadata;

.field public deviceScaleFactor:F

.field public externalPageScaleFactor:F

.field public hasTransparentBackground:Z

.field public isMobileOptimized:Z

.field public isScrollOffsetAtTop:Z

.field public localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

.field public maxPageScaleFactor:F

.field public minPageScaleFactor:F

.field public newVerticalScrollDirection:I

.field public pageScaleFactor:F

.field public primaryMainFrameItemSequenceNumber:J

.field public rootBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

.field public rootLayerSize:Lorg/chromium/gfx/mojom/SizeF;

.field public rootOverflowYHidden:Z

.field public rootScrollOffset:Lorg/chromium/gfx/mojom/PointF;

.field public scrollableViewportSize:Lorg/chromium/gfx/mojom/SizeF;

.field public selection:Lorg/chromium/viz/mojom/Selection;

.field public selectionRect:Lorg/chromium/gfx/mojom/Rect;

.field public topControlsHeight:F

.field public topControlsMinHeightOffset:F

.field public topControlsShownRatio:F

.field public viewportSizeInPixels:Lorg/chromium/gfx/mojom/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x90

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cc/mojom/RenderFrameMetadata;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;

    invoke-direct {v1, v0}, Lorg/chromium/cc/mojom/RenderFrameMetadata;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/skia/mojom/SkColor4f;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/SkColor4f;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->selectionRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->isScrollOffsetAtTop:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->isMobileOptimized:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootOverflowYHidden:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->hasTransparentBackground:Z

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->deviceScaleFactor:F

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/Selection;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/Selection;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->selection:Lorg/chromium/viz/mojom/Selection;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/cc/mojom/DelegatedInkBrowserMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cc/mojom/DelegatedInkBrowserMetadata;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->delegatedInkMetadata:Lorg/chromium/cc/mojom/DelegatedInkBrowserMetadata;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->viewportSizeInPixels:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/viz/mojom/LocalSurfaceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/LocalSurfaceId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->pageScaleFactor:F

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->externalPageScaleFactor:F

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->topControlsHeight:F

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->topControlsShownRatio:F

    const/16 v0, 0x58

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->newVerticalScrollDirection:I

    invoke-static {v0}, Lorg/chromium/viz/mojom/VerticalScrollDirection;->validate(I)V

    iget v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->newVerticalScrollDirection:I

    invoke-static {v0}, Lorg/chromium/viz/mojom/VerticalScrollDirection;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->newVerticalScrollDirection:I

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->bottomControlsHeight:F

    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->primaryMainFrameItemSequenceNumber:J

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->bottomControlsShownRatio:F

    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->topControlsMinHeightOffset:F

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->bottomControlsMinHeightOffset:F

    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->minPageScaleFactor:F

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->maxPageScaleFactor:F

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/SizeF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/SizeF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->scrollableViewportSize:Lorg/chromium/gfx/mojom/SizeF;

    const/16 v0, 0x88

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/SizeF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/SizeF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootLayerSize:Lorg/chromium/gfx/mojom/SizeF;
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

    sget-object v0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootBackgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->selectionRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v1, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->isScrollOffsetAtTop:Z

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->isMobileOptimized:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootOverflowYHidden:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->hasTransparentBackground:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->deviceScaleFactor:F

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->selection:Lorg/chromium/viz/mojom/Selection;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->delegatedInkMetadata:Lorg/chromium/cc/mojom/DelegatedInkBrowserMetadata;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->viewportSizeInPixels:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->pageScaleFactor:F

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->externalPageScaleFactor:F

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->topControlsHeight:F

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->topControlsShownRatio:F

    const/16 v1, 0x54

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->newVerticalScrollDirection:I

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->bottomControlsHeight:F

    const/16 v1, 0x5c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-wide v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->primaryMainFrameItemSequenceNumber:J

    const/16 v3, 0x60

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->bottomControlsShownRatio:F

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->topControlsMinHeightOffset:F

    const/16 v1, 0x6c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->bottomControlsMinHeightOffset:F

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->minPageScaleFactor:F

    const/16 v1, 0x74

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->maxPageScaleFactor:F

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->scrollableViewportSize:Lorg/chromium/gfx/mojom/SizeF;

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/cc/mojom/RenderFrameMetadata;->rootLayerSize:Lorg/chromium/gfx/mojom/SizeF;

    const/16 v0, 0x88

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
