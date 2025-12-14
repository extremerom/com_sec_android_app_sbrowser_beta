.class public Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COSE_ALGORITHM_ES256:I = -0x7


# instance fields
.field private final mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->mKeyPair:Ljava/security/KeyPair;

    return-void
.end method

.method private static encodeCoseKeyWithEs256SignatureAlgorithm(Ljava/security/interfaces/ECPublicKey;)[B
    .locals 3

    const/16 v0, 0x4d

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, -0x60

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborMajorTypeWithValue(Ljava/nio/ByteBuffer;BI)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    const/4 v2, -0x7

    invoke-static {v0, v2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    invoke-static {v0, v1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCoordinateAsCborByteString(Ljava/nio/ByteBuffer;Ljava/math/BigInteger;)V

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborInteger(Ljava/nio/ByteBuffer;I)V

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCoordinateAsCborByteString(Ljava/nio/ByteBuffer;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SpcBbKey"

    const-string v1, "The browser bound public key could not be encoded."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static putCborInteger(Ljava/nio/ByteBuffer;I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborMajorTypeWithValue(Ljava/nio/ByteBuffer;BI)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    const/16 v0, 0x20

    invoke-static {p0, v0, p1}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborMajorTypeWithValue(Ljava/nio/ByteBuffer;BI)V

    :goto_0
    return-void
.end method

.method private static putCborMajorTypeWithValue(Ljava/nio/ByteBuffer;BI)V
    .locals 1

    const/16 v0, 0x17

    if-gt p2, v0, :cond_0

    or-int/2addr p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-gt p2, v0, :cond_1

    or-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException;

    const-string p1, "Writing values larger than 255 is unimplemented."

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static putCoordinateAsCborByteString(Ljava/nio/ByteBuffer;Ljava/math/BigInteger;)V
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    new-array v1, v0, [B

    array-length v3, p1

    sub-int/2addr v0, v3

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    :goto_0
    array-length v0, p1

    const/16 v1, 0x40

    invoke-static {p0, v1, v0}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->putCborMajorTypeWithValue(Ljava/nio/ByteBuffer;BI)V

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    new-instance p0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException;

    const-string p1, "The coordinate must be 256-bits."

    invoke-direct {p0, p1, v2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException;

    const-string p1, "The coordinate must non-negative."

    invoke-direct {p0, p1, v2}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey$UnsupportedCborEncodingException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public getPublicKeyAsCoseKey()[B
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v0, v0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-static {p0}, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->encodeCoseKeyWithEs256SignatureAlgorithm(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object p0

    return-object p0
.end method

.method public sign([B)[B
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lorg/chromium/components/payments/browser_binding/BrowserBoundKey;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected usage of Signature in BrowserBoundKey"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    const-string p1, "SpcBbKey"

    const-string v0, "Could not sign clientData for browser bound key support."

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
