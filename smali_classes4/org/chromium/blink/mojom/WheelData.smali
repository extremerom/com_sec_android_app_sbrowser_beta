.class public final Lorg/chromium/blink/mojom/WheelData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public accelerationRatioX:F

.field public accelerationRatioY:F

.field public cancelable:I

.field public deltaUnits:B

.field public deltaX:F

.field public deltaY:F

.field public eventAction:B

.field public momentumPhase:B

.field public phase:B

.field public wheelTicksX:F

.field public wheelTicksY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/WheelData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/WheelData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WheelData;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/WheelData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/WheelData;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/WheelData;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->deltaX:F

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->deltaY:F

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->wheelTicksX:F

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->wheelTicksY:F

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->accelerationRatioX:F

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->accelerationRatioY:F

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v0

    iput-byte v0, v1, Lorg/chromium/blink/mojom/WheelData;->phase:B

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v0

    iput-byte v0, v1, Lorg/chromium/blink/mojom/WheelData;->momentumPhase:B

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v0

    iput-byte v0, v1, Lorg/chromium/blink/mojom/WheelData;->eventAction:B

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v0

    iput-byte v0, v1, Lorg/chromium/blink/mojom/WheelData;->deltaUnits:B

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->cancelable:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/DispatchType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/WheelData;->cancelable:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/DispatchType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/WheelData;->cancelable:I
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
    .locals 2

    sget-object v0, Lorg/chromium/blink/mojom/WheelData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/WheelData;->deltaX:F

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/WheelData;->deltaY:F

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/WheelData;->wheelTicksX:F

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/WheelData;->wheelTicksY:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/WheelData;->accelerationRatioX:F

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/WheelData;->accelerationRatioY:F

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget-byte v0, p0, Lorg/chromium/blink/mojom/WheelData;->phase:B

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    iget-byte v0, p0, Lorg/chromium/blink/mojom/WheelData;->momentumPhase:B

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    iget-byte v0, p0, Lorg/chromium/blink/mojom/WheelData;->eventAction:B

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    iget-byte v0, p0, Lorg/chromium/blink/mojom/WheelData;->deltaUnits:B

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    iget p0, p0, Lorg/chromium/blink/mojom/WheelData;->cancelable:I

    const/16 v0, 0x24

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
