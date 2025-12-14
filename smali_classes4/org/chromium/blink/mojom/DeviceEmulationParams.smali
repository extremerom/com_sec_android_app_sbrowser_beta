.class public final Lorg/chromium/blink/mojom/DeviceEmulationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public devicePosture:I

.field public deviceScaleFactor:F

.field public scale:F

.field public screenOrientationAngle:I

.field public screenOrientationType:I

.field public screenSize:Lorg/chromium/gfx/mojom/Size;

.field public screenType:I

.field public viewPosition:Lorg/chromium/gfx/mojom/Point;

.field public viewSize:Lorg/chromium/gfx/mojom/Size;

.field public viewportOffset:Lorg/chromium/gfx/mojom/PointF;

.field public viewportScale:F

.field public viewportSegments:[Lorg/chromium/gfx/mojom/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/DeviceEmulationParams;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/DeviceEmulationParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenType:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/EmulatedScreenType;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenType:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/EmulatedScreenType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenType:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->deviceScaleFactor:F

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x18

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Point;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Point;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewPosition:Lorg/chromium/gfx/mojom/Point;

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->scale:F

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportScale:F

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/PointF;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenOrientationType:I

    invoke-static {v2}, Lorg/chromium/display/mojom/ScreenOrientation;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenOrientationType:I

    invoke-static {v2}, Lorg/chromium/display/mojom/ScreenOrientation;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenOrientationType:I

    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenOrientationAngle:I

    const/16 v2, 0x40

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/gfx/mojom/Rect;

    iput-object v5, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    move v5, v3

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    invoke-static {v6}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->devicePosture:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/DevicePostureType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->devicePosture:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/DevicePostureType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/DeviceEmulationParams;->devicePosture:I
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

    sget-object v0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenType:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->deviceScaleFactor:F

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewPosition:Lorg/chromium/gfx/mojom/Point;

    const/16 v2, 0x18

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->scale:F

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportScale:F

    const/16 v2, 0x2c

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportOffset:Lorg/chromium/gfx/mojom/PointF;

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenOrientationType:I

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->screenOrientationAngle:I

    const/16 v2, 0x3c

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x40

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_0
    iget-object v4, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->viewportSegments:[Lorg/chromium/gfx/mojom/Rect;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v4, v4, v2

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p0, p0, Lorg/chromium/blink/mojom/DeviceEmulationParams;->devicePosture:I

    const/16 v0, 0x48

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
