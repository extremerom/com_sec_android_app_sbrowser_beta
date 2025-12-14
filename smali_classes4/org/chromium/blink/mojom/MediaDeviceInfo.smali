.class public final Lorg/chromium/blink/mojom/MediaDeviceInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public availability:Ljava/lang/Integer;

.field public controlSupport:Lorg/chromium/media/mojom/VideoCaptureControlSupport;

.field public deviceId:Ljava/lang/String;

.field public facingMode:I

.field public groupId:Ljava/lang/String;

.field public label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MediaDeviceInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/MediaDeviceInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/MediaDeviceInfo;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->deviceId:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->label:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->groupId:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/media/mojom/VideoCaptureControlSupport;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoCaptureControlSupport;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->controlSupport:Lorg/chromium/media/mojom/VideoCaptureControlSupport;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->facingMode:I

    invoke-static {v1}, Lorg/chromium/blink/mojom/FacingMode;->validate(I)V

    iget v1, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->facingMode:I

    invoke-static {v1}, Lorg/chromium/blink/mojom/FacingMode;->toKnownValue(I)I

    move-result v1

    iput v1, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->facingMode:I

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->availability:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-object v0, v2, Lorg/chromium/blink/mojom/MediaDeviceInfo;->availability:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->deviceId:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->label:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->groupId:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->controlSupport:Lorg/chromium/media/mojom/VideoCaptureControlSupport;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->facingMode:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/MediaDeviceInfo;->availability:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0x30

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
