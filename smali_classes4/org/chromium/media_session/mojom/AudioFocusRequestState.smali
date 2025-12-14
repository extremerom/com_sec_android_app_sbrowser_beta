.class public final Lorg/chromium/media_session/mojom/AudioFocusRequestState;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public audioFocusType:I

.field public requestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public sessionInfo:Lorg/chromium/media_session/mojom/MediaSessionInfo;

.field public sourceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public sourceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x20

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v3, 0x28

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v3, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v5, 0x30

    const/16 v6, 0x9

    invoke-direct {v3, v5, v6}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1, v2, v3}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v4

    sput-object v0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media_session/mojom/AudioFocusRequestState;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;

    invoke-direct {v1, v0}, Lorg/chromium/media_session/mojom/AudioFocusRequestState;-><init>(I)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/media_session/mojom/MediaSessionInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media_session/mojom/MediaSessionInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->sessionInfo:Lorg/chromium/media_session/mojom/MediaSessionInfo;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->audioFocusType:I

    invoke-static {v2}, Lorg/chromium/media_session/mojom/AudioFocusType;->validate(I)V

    iget v2, v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->audioFocusType:I

    invoke-static {v2}, Lorg/chromium/media_session/mojom/AudioFocusType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->audioFocusType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->sourceName:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->requestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    :cond_2
    const/16 v2, 0x9

    if-lt v0, v2, :cond_3

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->sourceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;
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
    .locals 3

    sget-object v0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->sessionInfo:Lorg/chromium/media_session/mojom/MediaSessionInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->audioFocusType:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->sourceName:Ljava/lang/String;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->requestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/media_session/mojom/AudioFocusRequestState;->sourceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
