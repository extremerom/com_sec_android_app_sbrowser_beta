.class final Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/DemuxerStream_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DemuxerStreamReadResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public audioConfig:Lorg/chromium/media/mojom/AudioDecoderConfig;

.field public batchBuffers:[Lorg/chromium/media/mojom/DecoderBuffer;

.field public status:I

.field public videoConfig:Lorg/chromium/media/mojom/VideoDecoderConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->status:I

    invoke-static {v2}, Lorg/chromium/media/mojom/DemuxerStream$Status;->validate(I)V

    iget v2, v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->status:I

    invoke-static {v2}, Lorg/chromium/media/mojom/DemuxerStream$Status;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->status:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/media/mojom/DecoderBuffer;

    iput-object v5, v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->batchBuffers:[Lorg/chromium/media/mojom/DecoderBuffer;

    :goto_0
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v5, :cond_1

    iget-object v5, v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->batchBuffers:[Lorg/chromium/media/mojom/DecoderBuffer;

    mul-int/lit8 v6, v2, 0x10

    add-int/2addr v6, v0

    invoke-static {v3, v6}, Lorg/chromium/media/mojom/DecoderBuffer;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/media/mojom/DecoderBuffer;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioDecoderConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/AudioDecoderConfig;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->audioConfig:Lorg/chromium/media/mojom/AudioDecoderConfig;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/VideoDecoderConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoDecoderConfig;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->videoConfig:Lorg/chromium/media/mojom/VideoDecoderConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->status:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->batchBuffers:[Lorg/chromium/media/mojom/DecoderBuffer;

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeUnionArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->batchBuffers:[Lorg/chromium/media/mojom/DecoderBuffer;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x10

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->audioConfig:Lorg/chromium/media/mojom/AudioDecoderConfig;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->videoConfig:Lorg/chromium/media/mojom/VideoDecoderConfig;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
