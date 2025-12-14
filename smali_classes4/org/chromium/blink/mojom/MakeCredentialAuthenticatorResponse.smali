.class public final Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public attestationObject:[B

.field public authenticatorAttachment:I

.field public credBlob:Z

.field public credPropsRk:Z

.field public echoCredBlob:Z

.field public echoCredProps:Z

.field public echoHmacCreateSecret:Z

.field public echoLargeBlob:Z

.field public echoPrf:Z

.field public hasCredPropsRk:Z

.field public hmacCreateSecret:Z

.field public info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

.field public payment:Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;

.field public prf:Z

.field public prfResults:Lorg/chromium/blink/mojom/PrfValues;

.field public publicKeyAlgo:I

.field public publicKeyDer:[B

.field public supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

.field public supportsLargeBlob:Z

.field public transports:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/CommonCredentialInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/CommonCredentialInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->authenticatorAttachment:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticatorAttachment;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->authenticatorAttachment:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticatorAttachment;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->authenticatorAttachment:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoHmacCreateSecret:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->hmacCreateSecret:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoPrf:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->prf:Z

    const/4 v5, 0x4

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoCredBlob:Z

    const/4 v5, 0x5

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->credBlob:Z

    const/4 v5, 0x6

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoCredProps:Z

    const/4 v5, 0x7

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->hasCredPropsRk:Z

    const/16 v0, 0x15

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->credPropsRk:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoLargeBlob:Z

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->supportsLargeBlob:Z

    const/16 v0, 0x18

    const/4 v4, -0x1

    invoke-virtual {p0, v0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->attestationObject:[B

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->transports:[I

    :goto_0
    iget-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->transports:[I

    array-length v5, v0

    if-ge v2, v5, :cond_1

    aget v0, v0, v2

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticatorTransport;->validate(I)V

    iget-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->transports:[I

    aget v5, v0, v2

    invoke-static {v5}, Lorg/chromium/blink/mojom/AuthenticatorTransport;->toKnownValue(I)I

    move-result v5

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/PrfValues;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PrfValues;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->prfResults:Lorg/chromium/blink/mojom/PrfValues;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyDer:[B

    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyAlgo:I

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->payment:Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->authenticatorAttachment:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoHmacCreateSecret:Z

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->hmacCreateSecret:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoPrf:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->prf:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoCredBlob:Z

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->credBlob:Z

    const/4 v5, 0x5

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoCredProps:Z

    const/4 v5, 0x6

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->hasCredPropsRk:Z

    const/4 v5, 0x7

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->credPropsRk:Z

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoLargeBlob:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->supportsLargeBlob:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->attestationObject:[B

    const/16 v1, 0x18

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->transports:[I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->prfResults:Lorg/chromium/blink/mojom/PrfValues;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyDer:[B

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyAlgo:I

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->payment:Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;

    const/16 v0, 0x48

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
