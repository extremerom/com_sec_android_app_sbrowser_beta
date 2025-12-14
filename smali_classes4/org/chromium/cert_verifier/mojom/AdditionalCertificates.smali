.class public final Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allCertificates:[[B

.field public distrustedSpkis:[[B

.field public includeSystemTrustStore:Z

.field public trustAnchors:[[B

.field public trustAnchorsAndLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

.field public trustAnchorsWithAdditionalConstraints:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

.field public trustAnchorsWithEnforcedConstraints:[[B

.field public trustLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x48

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->includeSystemTrustStore:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;

    invoke-direct {v1, v0}, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [[B

    iput-object v6, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->allCertificates:[[B

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    iget-object v7, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->allCertificates:[[B

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v0

    invoke-virtual {v3, v8, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [[B

    iput-object v6, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchors:[[B

    move v6, v2

    :goto_1
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    iget-object v7, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchors:[[B

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v0

    invoke-virtual {v3, v8, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [[B

    iput-object v6, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithEnforcedConstraints:[[B

    move v6, v2

    :goto_2
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_3

    iget-object v7, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithEnforcedConstraints:[[B

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v0

    invoke-virtual {v3, v8, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    iput-object v6, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithAdditionalConstraints:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    move v6, v2

    :goto_3
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_4

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithAdditionalConstraints:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    invoke-static {v7}, Lorg/chromium/cert_verifier/mojom/CertWithConstraints;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    iput-object v6, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsAndLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    move v6, v2

    :goto_4
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_5

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsAndLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    invoke-static {v7}, Lorg/chromium/cert_verifier/mojom/CertWithConstraints;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    iput-object v6, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    move v6, v2

    :goto_5
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_6

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    invoke-static {v7}, Lorg/chromium/cert_verifier/mojom/CertWithConstraints;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [[B

    iput-object v6, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->distrustedSpkis:[[B

    move v6, v2

    :goto_6
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_7

    iget-object v7, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->distrustedSpkis:[[B

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v0

    invoke-virtual {v3, v8, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->includeSystemTrustStore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->allCertificates:[[B

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->allCertificates:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchors:[[B

    const/16 v4, 0x10

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_2
    iget-object v5, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchors:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithEnforcedConstraints:[[B

    const/16 v4, 0x18

    if-nez v0, :cond_4

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_4
    iget-object v5, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithEnforcedConstraints:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_5

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithAdditionalConstraints:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    const/16 v4, 0x20

    if-nez v0, :cond_6

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_6
    iget-object v5, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsWithAdditionalConstraints:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    array-length v6, v5

    if-ge v4, v6, :cond_7

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsAndLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    const/16 v4, 0x28

    if-nez v0, :cond_8

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_8
    iget-object v5, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustAnchorsAndLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    array-length v6, v5

    if-ge v4, v6, :cond_9

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    iget-object v0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    const/16 v4, 0x30

    if-nez v0, :cond_a

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_a
    iget-object v5, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->trustLeafs:[Lorg/chromium/cert_verifier/mojom/CertWithConstraints;

    array-length v6, v5

    if-ge v4, v6, :cond_b

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->distrustedSpkis:[[B

    const/16 v4, 0x38

    if-nez v0, :cond_c

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_d

    :cond_c
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_c
    iget-object v5, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->distrustedSpkis:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_d

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    iget-boolean p0, p0, Lorg/chromium/cert_verifier/mojom/AdditionalCertificates;->includeSystemTrustStore:Z

    const/16 v0, 0x40

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
