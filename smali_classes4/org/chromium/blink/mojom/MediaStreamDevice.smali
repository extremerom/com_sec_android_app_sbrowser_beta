.class public final Lorg/chromium/blink/mojom/MediaStreamDevice;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public displayId:J

.field public displayMediaInfo:Lorg/chromium/media/mojom/DisplayMediaInformation;

.field public groupId:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public input:Lorg/chromium/media/mojom/AudioParameters;

.field public matchedOutputDeviceId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public type:I

.field public videoFacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/MediaStreamDevice;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/MediaStreamDevice;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MediaStreamDevice;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/MediaStreamDevice;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/MediaStreamDevice;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/MediaStreamDevice;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->type:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/MediaStreamType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->type:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/MediaStreamType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->type:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->videoFacing:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoFacingMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->videoFacing:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoFacingMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->videoFacing:I

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->id:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->displayId:J

    const/16 v0, 0x20

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->groupId:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->matchedOutputDeviceId:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->name:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioParameters;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/AudioParameters;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->input:Lorg/chromium/media/mojom/AudioParameters;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/DisplayMediaInformation;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/DisplayMediaInformation;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MediaStreamDevice;->displayMediaInfo:Lorg/chromium/media/mojom/DisplayMediaInformation;
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
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/MediaStreamDevice;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->type:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->videoFacing:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->id:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->displayId:J

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->groupId:Ljava/lang/String;

    const/16 v1, 0x20

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->matchedOutputDeviceId:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->name:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->input:Lorg/chromium/media/mojom/AudioParameters;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->sessionId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/MediaStreamDevice;->displayMediaInfo:Lorg/chromium/media/mojom/DisplayMediaInformation;

    const/16 v0, 0x48

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
