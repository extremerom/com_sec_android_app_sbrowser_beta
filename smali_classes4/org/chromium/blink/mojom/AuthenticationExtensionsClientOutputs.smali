.class public final Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public appidExtension:Z

.field public echoAppidExtension:Z

.field public echoLargeBlob:Z

.field public echoLargeBlobWritten:Z

.field public echoPrf:Z

.field public echoUserVerificationMethods:Z

.field public getCredBlob:[B

.field public largeBlob:[B

.field public largeBlobWritten:Z

.field public payment:Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;

.field public prfNotEvaluated:Z

.field public prfResults:Lorg/chromium/blink/mojom/PrfValues;

.field public supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

.field public userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;-><init>(I)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoAppidExtension:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->appidExtension:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoUserVerificationMethods:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoPrf:Z

    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->prfNotEvaluated:Z

    const/4 v5, 0x5

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoLargeBlob:Z

    const/4 v5, 0x6

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoLargeBlobWritten:Z

    const/4 v5, 0x7

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->largeBlobWritten:Z

    const/16 v5, 0x10

    invoke-virtual {p0, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    if-nez v5, :cond_1

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/blink/mojom/UvmEntry;

    iput-object v7, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    move v7, v1

    :goto_0
    iget v8, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    const/16 v8, 0x8

    invoke-static {v7, v8, v3, v5, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    invoke-static {v8}, Lorg/chromium/blink/mojom/UvmEntry;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/UvmEntry;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/PrfValues;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PrfValues;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->prfResults:Lorg/chromium/blink/mojom/PrfValues;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->largeBlob:[B

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->getCredBlob:[B

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->payment:Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoAppidExtension:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->appidExtension:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoUserVerificationMethods:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoPrf:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->prfNotEvaluated:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoLargeBlob:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoLargeBlobWritten:Z

    const/4 v4, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->largeBlobWritten:Z

    const/4 v4, 0x7

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    const/16 v4, 0x10

    const/4 v5, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_0
    iget-object v6, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    array-length v7, v6

    if-ge v4, v7, :cond_1

    aget-object v6, v6, v4

    mul-int/lit8 v7, v4, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->prfResults:Lorg/chromium/blink/mojom/PrfValues;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->largeBlob:[B

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->getCredBlob:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysResponse;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->payment:Lorg/chromium/blink/mojom/AuthenticationExtensionsPaymentResponse;

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
