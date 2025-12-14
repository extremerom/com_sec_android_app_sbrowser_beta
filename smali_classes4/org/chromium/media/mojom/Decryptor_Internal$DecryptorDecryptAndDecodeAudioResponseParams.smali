.class final Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/Decryptor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecryptorDecryptAndDecodeAudioResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public audioBuffers:[Lorg/chromium/media/mojom/AudioBuffer;

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->status:I

    invoke-static {v2}, Lorg/chromium/media/mojom/Decryptor$Status;->validate(I)V

    iget v2, v1, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->status:I

    invoke-static {v2}, Lorg/chromium/media/mojom/Decryptor$Status;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->status:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/media/mojom/AudioBuffer;

    iput-object v5, v1, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->audioBuffers:[Lorg/chromium/media/mojom/AudioBuffer;

    move v5, v3

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->audioBuffers:[Lorg/chromium/media/mojom/AudioBuffer;

    invoke-static {v6}, Lorg/chromium/media/mojom/AudioBuffer;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/AudioBuffer;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->status:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->audioBuffers:[Lorg/chromium/media/mojom/AudioBuffer;

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v3

    :goto_0
    iget-object v2, p0, Lorg/chromium/media/mojom/Decryptor_Internal$DecryptorDecryptAndDecodeAudioResponseParams;->audioBuffers:[Lorg/chromium/media/mojom/AudioBuffer;

    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v2, v2, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
