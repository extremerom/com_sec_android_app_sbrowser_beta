.class public final Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public audioCodec:Ljava/lang/String;

.field public isEncryptedMedia:Z

.field public remotePlaybackDisabled:Z

.field public remotePlaybackStarted:Z

.field public unusedField:Ljava/lang/String;

.field public videoCodec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x11

    const/16 v3, 0x28

    invoke-direct {v1, v3, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1, v2}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;

    invoke-direct {v1, v0}, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;-><init>(I)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->videoCodec:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->audioCodec:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->remotePlaybackDisabled:Z

    const/4 v3, 0x1

    const/16 v4, 0x11

    if-lt v0, v4, :cond_1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->remotePlaybackStarted:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v5, 0x12

    if-lt v0, v5, :cond_2

    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->isEncryptedMedia:Z

    :cond_2
    if-lt v0, v4, :cond_3

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->unusedField:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->videoCodec:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->audioCodec:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->remotePlaybackDisabled:Z

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->remotePlaybackStarted:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->isEncryptedMedia:Z

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;->unusedField:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
