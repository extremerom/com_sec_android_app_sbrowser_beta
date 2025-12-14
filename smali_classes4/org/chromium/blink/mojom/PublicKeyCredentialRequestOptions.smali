.class public final Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

.field public challenge:[B

.field public challengeUrl:Lorg/chromium/url/mojom/Url;

.field public extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

.field public hints:[I

.field public mediation:I

.field public relyingPartyId:Ljava/lang/String;

.field public requestedCredentialTypeFlags:I

.field public timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public userVerification:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/Mediation;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/Mediation;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->requestedCredentialTypeFlags:I

    const/16 v2, 0x10

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challenge:[B

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challengeUrl:Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x20

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v2, 0x28

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    iput-object v6, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    move v6, v4

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-static {v7}, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v0, 0x38

    invoke-virtual {p0, v0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->hints:[I

    move v0, v4

    :goto_1
    iget-object v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->hints:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget v2, v2, v0

    invoke-static {v2}, Lorg/chromium/blink/mojom/Hint;->validate(I)V

    iget-object v2, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->hints:[I

    aget v3, v2, v0

    invoke-static {v3}, Lorg/chromium/blink/mojom/Hint;->toKnownValue(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->userVerification:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/UserVerificationRequirement;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->userVerification:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/UserVerificationRequirement;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->userVerification:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->mediation:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->requestedCredentialTypeFlags:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challenge:[B

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challengeUrl:Lorg/chromium/url/mojom/Url;

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    const/16 v2, 0x30

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_0
    iget-object v5, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    array-length v6, v5

    if-ge v2, v6, :cond_1

    aget-object v5, v5, v2

    mul-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->hints:[I

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->userVerification:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    const/16 v0, 0x48

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
