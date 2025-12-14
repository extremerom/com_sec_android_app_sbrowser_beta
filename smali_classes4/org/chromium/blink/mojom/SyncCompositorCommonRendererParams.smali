.class public final Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public didActivatePendingTreeCount:I

.field public invalidateNeedsDraw:Z

.field public maxPageScaleFactor:F

.field public maxScrollOffset:Lorg/chromium/gfx/mojom/PointF;

.field public minPageScaleFactor:F

.field public needInvalidateCount:I

.field public pageScaleFactor:F

.field public scrollableSize:Lorg/chromium/gfx/mojom/SizeF;

.field public totalScrollOffset:Lorg/chromium/gfx/mojom/PointF;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->version:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->pageScaleFactor:F

    iput v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->minPageScaleFactor:F

    iput v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->maxPageScaleFactor:F

    iput p1, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->needInvalidateCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->invalidateNeedsDraw:Z

    iput p1, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->didActivatePendingTreeCount:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->version:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->pageScaleFactor:F

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->totalScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->maxScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/SizeF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/SizeF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->scrollableSize:Lorg/chromium/gfx/mojom/SizeF;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->minPageScaleFactor:F

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->maxPageScaleFactor:F

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->needInvalidateCount:I

    const/16 v0, 0x34

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->invalidateNeedsDraw:Z

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->didActivatePendingTreeCount:I
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

    sget-object v0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->version:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->pageScaleFactor:F

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->totalScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->maxScrollOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->scrollableSize:Lorg/chromium/gfx/mojom/SizeF;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->minPageScaleFactor:F

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->maxPageScaleFactor:F

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->needInvalidateCount:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->invalidateNeedsDraw:Z

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget p0, p0, Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;->didActivatePendingTreeCount:I

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
