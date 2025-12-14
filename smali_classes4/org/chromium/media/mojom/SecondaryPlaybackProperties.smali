.class public final Lorg/chromium/media/mojom/SecondaryPlaybackProperties;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public audioCodec:I

.field public audioCodecProfile:I

.field public audioDecoder:I

.field public audioEncryptionScheme:I

.field public naturalSize:Lorg/chromium/gfx/mojom/Size;

.field public videoCodec:I

.field public videoCodecProfile:I

.field public videoDecoder:I

.field public videoEncryptionScheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/SecondaryPlaybackProperties;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodec:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodec;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodec:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodec;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodec:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodec:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoCodec;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodec:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoCodec;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodec:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodecProfile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodecProfile;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodecProfile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioCodecProfile;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodecProfile:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodecProfile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoCodecProfile;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodecProfile:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoCodecProfile;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodecProfile:I

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioDecoder:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioDecoderType;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioDecoder:I

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioDecoderType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioDecoder:I

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoDecoder:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoDecoderType;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoDecoder:I

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoDecoderType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoDecoder:I

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioEncryptionScheme:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EncryptionScheme;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioEncryptionScheme:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EncryptionScheme;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioEncryptionScheme:I

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoEncryptionScheme:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EncryptionScheme;->validate(I)V

    iget v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoEncryptionScheme:I

    invoke-static {v0}, Lorg/chromium/media/mojom/EncryptionScheme;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoEncryptionScheme:I

    const/16 v0, 0x28

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->naturalSize:Lorg/chromium/gfx/mojom/Size;
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

    sget-object v0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodec:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodec:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioCodecProfile:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoCodecProfile:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioDecoder:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoDecoder:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->audioEncryptionScheme:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->videoEncryptionScheme:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/media/mojom/SecondaryPlaybackProperties;->naturalSize:Lorg/chromium/gfx/mojom/Size;

    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
