.class public final Lorg/chromium/network/mojom/TrustTokenParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public additionalSignedHeaders:[Ljava/lang/String;

.field public customIssuer:Lorg/chromium/url/internal/mojom/Origin;

.field public customKeyCommitment:Ljava/lang/String;

.field public includeTimestampHeader:Z

.field public issuers:[Lorg/chromium/url/internal/mojom/Origin;

.field public operation:I

.field public possiblyUnsafeAdditionalSigningData:Ljava/lang/String;

.field public refreshPolicy:I

.field public signRequestData:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/TrustTokenParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/TrustTokenParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/TrustTokenParams;->refreshPolicy:I

    iput p1, p0, Lorg/chromium/network/mojom/TrustTokenParams;->signRequestData:I

    iput-boolean p1, p0, Lorg/chromium/network/mojom/TrustTokenParams;->includeTimestampHeader:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/TrustTokenParams;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/TrustTokenParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/TrustTokenParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/TrustTokenParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->operation:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationType;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->operation:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenOperationType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->operation:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->refreshPolicy:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenRefreshPolicy;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->refreshPolicy:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenRefreshPolicy;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->refreshPolicy:I

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->customKeyCommitment:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->customIssuer:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->signRequestData:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenSignRequestData;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->signRequestData:I

    invoke-static {v2}, Lorg/chromium/network/mojom/TrustTokenSignRequestData;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->signRequestData:I

    const/16 v2, 0x24

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/network/mojom/TrustTokenParams;->includeTimestampHeader:Z

    const/16 v2, 0x28

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/url/internal/mojom/Origin;

    iput-object v7, v1, Lorg/chromium/network/mojom/TrustTokenParams;->issuers:[Lorg/chromium/url/internal/mojom/Origin;

    move v7, v4

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/network/mojom/TrustTokenParams;->issuers:[Lorg/chromium/url/internal/mojom/Origin;

    invoke-static {v8}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/network/mojom/TrustTokenParams;->additionalSignedHeaders:[Ljava/lang/String;

    move v6, v4

    :goto_1
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    iget-object v7, v1, Lorg/chromium/network/mojom/TrustTokenParams;->additionalSignedHeaders:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x38

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/TrustTokenParams;->possiblyUnsafeAdditionalSigningData:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/network/mojom/TrustTokenParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->operation:I

    const/16 v8, 0x8

    invoke-virtual {p1, v0, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->refreshPolicy:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->customKeyCommitment:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v9, 0x1

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->customIssuer:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->signRequestData:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->includeTimestampHeader:Z

    const/16 v1, 0x24

    const/4 v10, 0x0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->issuers:[Lorg/chromium/url/internal/mojom/Origin;

    const/4 v11, -0x1

    const/16 v1, 0x28

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v10

    :goto_0
    iget-object v1, p0, Lorg/chromium/network/mojom/TrustTokenParams;->issuers:[Lorg/chromium/url/internal/mojom/Origin;

    array-length v2, v1

    if-ge v6, v2, :cond_1

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v10

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v6

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->additionalSignedHeaders:[Ljava/lang/String;

    const/16 v1, 0x30

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v10

    :goto_2
    iget-object v1, p0, Lorg/chromium/network/mojom/TrustTokenParams;->additionalSignedHeaders:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_3

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v10

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p0, p0, Lorg/chromium/network/mojom/TrustTokenParams;->possiblyUnsafeAdditionalSigningData:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
