.class public final Lorg/chromium/device/mojom/SerialConnectionOptions;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bitrate:I

.field public ctsFlowControl:Z

.field public dataBits:I

.field public hasCtsFlowControl:Z

.field public parityBit:I

.field public stopBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/mojom/SerialConnectionOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/device/mojom/SerialConnectionOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->bitrate:I

    iput p1, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->dataBits:I

    iput p1, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->parityBit:I

    iput p1, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->stopBits:I

    iput-boolean p1, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->hasCtsFlowControl:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/SerialConnectionOptions;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/device/mojom/SerialConnectionOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/device/mojom/SerialConnectionOptions;

    invoke-direct {v1, v0}, Lorg/chromium/device/mojom/SerialConnectionOptions;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->bitrate:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->dataBits:I

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialDataBits;->validate(I)V

    iget v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->dataBits:I

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialDataBits;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->dataBits:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->parityBit:I

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialParityBit;->validate(I)V

    iget v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->parityBit:I

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialParityBit;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->parityBit:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->stopBits:I

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialStopBits;->validate(I)V

    iget v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->stopBits:I

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialStopBits;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->stopBits:I

    const/4 v0, 0x0

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->ctsFlowControl:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/device/mojom/SerialConnectionOptions;->hasCtsFlowControl:Z
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

    sget-object v0, Lorg/chromium/device/mojom/SerialConnectionOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->bitrate:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->dataBits:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->parityBit:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->stopBits:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->ctsFlowControl:Z

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/device/mojom/SerialConnectionOptions;->hasCtsFlowControl:Z

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
