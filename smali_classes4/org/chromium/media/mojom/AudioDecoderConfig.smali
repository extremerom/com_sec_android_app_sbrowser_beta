.class public final Lorg/chromium/media/mojom/AudioDecoderConfig;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public aacExtraData:[B

.field public channelLayout:I

.field public codec:I

.field public codecDelay:I

.field public encryptionScheme:I

.field public extraData:[B

.field public profile:I

.field public sampleFormat:I

.field public samplesPerSecond:I

.field public seekPreroll:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public shouldDiscardDecoderDelay:Z

.field public targetOutputChannelLayout:I

.field public targetOutputSampleFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/AudioDecoderConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/AudioDecoderConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/AudioDecoderConfig;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/AudioDecoderConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/AudioDecoderConfig;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/AudioDecoderConfig;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->codec:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodec;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->codec:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodec;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->codec:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->sampleFormat:I

    invoke-static {v0}, Lorg/chromium/media/mojom/SampleFormat;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->sampleFormat:I

    invoke-static {v0}, Lorg/chromium/media/mojom/SampleFormat;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->sampleFormat:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->channelLayout:I

    invoke-static {v0}, Lorg/chromium/media/mojom/ChannelLayout;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->channelLayout:I

    invoke-static {v0}, Lorg/chromium/media/mojom/ChannelLayout;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->channelLayout:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->samplesPerSecond:I

    const/16 v0, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->extraData:[B

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->encryptionScheme:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EncryptionScheme;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->encryptionScheme:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EncryptionScheme;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->encryptionScheme:I

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->codecDelay:I

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->seekPreroll:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->profile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodecProfile;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->profile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodecProfile;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->profile:I

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputChannelLayout:I

    invoke-static {v0}, Lorg/chromium/media/mojom/ChannelLayout;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputChannelLayout:I

    invoke-static {v0}, Lorg/chromium/media/mojom/ChannelLayout;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputChannelLayout:I

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputSampleFormat:I

    invoke-static {v0}, Lorg/chromium/media/mojom/SampleFormat;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputSampleFormat:I

    invoke-static {v0}, Lorg/chromium/media/mojom/SampleFormat;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputSampleFormat:I

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->shouldDiscardDecoderDelay:Z

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioDecoderConfig;->aacExtraData:[B
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

    sget-object v0, Lorg/chromium/media/mojom/AudioDecoderConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->codec:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->sampleFormat:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->channelLayout:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->samplesPerSecond:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->extraData:[B

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->encryptionScheme:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->codecDelay:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->seekPreroll:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->profile:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputChannelLayout:I

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->targetOutputSampleFormat:I

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->shouldDiscardDecoderDelay:Z

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/media/mojom/AudioDecoderConfig;->aacExtraData:[B

    const/16 v0, 0x40

    invoke-virtual {p1, p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    return-void
.end method
