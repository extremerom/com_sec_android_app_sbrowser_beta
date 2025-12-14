.class final Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrameHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalFrameHostStartDraggingParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public cursorOffsetInDip:Lorg/chromium/gfx/mojom/Vector2d;

.field public dragData:Lorg/chromium/blink/mojom/DragData;

.field public dragObjRectInDip:Lorg/chromium/gfx/mojom/Rect;

.field public eventInfo:Lorg/chromium/blink/mojom/DragEventSourceInfo;

.field public image:Lorg/chromium/skia/mojom/BitmapN32;

.field public operationsAllowed:Lorg/chromium/blink/mojom/AllowedDragOperations;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/DragData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/DragData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragData:Lorg/chromium/blink/mojom/DragData;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AllowedDragOperations;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AllowedDragOperations;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->operationsAllowed:Lorg/chromium/blink/mojom/AllowedDragOperations;

    const/16 v0, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/skia/mojom/BitmapN32;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/BitmapN32;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->image:Lorg/chromium/skia/mojom/BitmapN32;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Vector2d;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Vector2d;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->cursorOffsetInDip:Lorg/chromium/gfx/mojom/Vector2d;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragObjRectInDip:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/DragEventSourceInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/DragEventSourceInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->eventInfo:Lorg/chromium/blink/mojom/DragEventSourceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragData:Lorg/chromium/blink/mojom/DragData;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->operationsAllowed:Lorg/chromium/blink/mojom/AllowedDragOperations;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->image:Lorg/chromium/skia/mojom/BitmapN32;

    const/16 v1, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->cursorOffsetInDip:Lorg/chromium/gfx/mojom/Vector2d;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragObjRectInDip:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->eventInfo:Lorg/chromium/blink/mojom/DragEventSourceInfo;

    const/16 v0, 0x30

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
