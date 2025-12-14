.class public final Lorg/chromium/blink/mojom/GestureData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public contactSize:Lorg/chromium/gfx/mojom/Size;

.field public flingData:Lorg/chromium/blink/mojom/FlingData;

.field public isSourceTouchEventSetBlocking:Z

.field public pinchBeginData:Lorg/chromium/blink/mojom/PinchBeginData;

.field public pinchEndData:Lorg/chromium/blink/mojom/PinchEndData;

.field public pinchUpdateData:Lorg/chromium/blink/mojom/PinchUpdateData;

.field public primaryPointerType:I

.field public primaryUniqueTouchEventId:I

.field public screenPosition:Lorg/chromium/gfx/mojom/PointF;

.field public scrollData:Lorg/chromium/blink/mojom/ScrollData;

.field public sourceDevice:I

.field public tapData:Lorg/chromium/blink/mojom/TapData;

.field public tapDownData:Lorg/chromium/blink/mojom/TapDownData;

.field public uniqueTouchEventId:I

.field public widgetPosition:Lorg/chromium/gfx/mojom/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/GestureData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/GestureData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/GestureData;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/GestureData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/GestureData;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/GestureData;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->screenPosition:Lorg/chromium/gfx/mojom/PointF;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->widgetPosition:Lorg/chromium/gfx/mojom/PointF;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GestureData;->sourceDevice:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/GestureDevice;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/GestureData;->sourceDevice:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/GestureDevice;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GestureData;->sourceDevice:I

    const/16 v0, 0x1c

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/GestureData;->isSourceTouchEventSetBlocking:Z

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GestureData;->primaryPointerType:I

    invoke-static {v0}, Lorg/chromium/ui/mojom/EventPointerType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/GestureData;->primaryPointerType:I

    invoke-static {v0}, Lorg/chromium/ui/mojom/EventPointerType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GestureData;->primaryPointerType:I

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GestureData;->primaryUniqueTouchEventId:I

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/GestureData;->uniqueTouchEventId:I

    const/16 v0, 0x30

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->contactSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ScrollData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ScrollData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->scrollData:Lorg/chromium/blink/mojom/ScrollData;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/PinchBeginData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PinchBeginData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->pinchBeginData:Lorg/chromium/blink/mojom/PinchBeginData;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/PinchUpdateData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PinchUpdateData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->pinchUpdateData:Lorg/chromium/blink/mojom/PinchUpdateData;

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/PinchEndData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PinchEndData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->pinchEndData:Lorg/chromium/blink/mojom/PinchEndData;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/TapData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/TapData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->tapData:Lorg/chromium/blink/mojom/TapData;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/TapDownData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/TapDownData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->tapDownData:Lorg/chromium/blink/mojom/TapDownData;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/FlingData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FlingData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/GestureData;->flingData:Lorg/chromium/blink/mojom/FlingData;
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

    sget-object v0, Lorg/chromium/blink/mojom/GestureData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->screenPosition:Lorg/chromium/gfx/mojom/PointF;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->widgetPosition:Lorg/chromium/gfx/mojom/PointF;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/GestureData;->sourceDevice:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/GestureData;->isSourceTouchEventSetBlocking:Z

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/GestureData;->primaryPointerType:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/GestureData;->primaryUniqueTouchEventId:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/GestureData;->uniqueTouchEventId:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->contactSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->scrollData:Lorg/chromium/blink/mojom/ScrollData;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->pinchBeginData:Lorg/chromium/blink/mojom/PinchBeginData;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->pinchUpdateData:Lorg/chromium/blink/mojom/PinchUpdateData;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->pinchEndData:Lorg/chromium/blink/mojom/PinchEndData;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->tapData:Lorg/chromium/blink/mojom/TapData;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/GestureData;->tapDownData:Lorg/chromium/blink/mojom/TapDownData;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/GestureData;->flingData:Lorg/chromium/blink/mojom/FlingData;

    const/16 v0, 0x68

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
