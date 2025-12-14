.class public final Ld7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV6/d;


# static fields
.field public static final c:Ljava/util/List;

.field public static final d:[B

.field public static final e:[B


# instance fields
.field public final a:LZ3/x;

.field public final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Ld7/d;->c:Ljava/util/List;

    const/16 v0, 0x10

    new-array v1, v0, [B

    sput-object v1, Ld7/d;->d:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ld7/d;->e:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ld7/d;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Ld7/d;->b:[B

    new-instance p1, LZ3/x;

    invoke-direct {p1, v0}, LZ3/x;-><init>([B)V

    iput-object p1, p0, Ld7/d;->a:LZ3/x;

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid key size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v1, " bytes; key must have 64 bytes"

    invoke-static {v0, p1, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 4

    array-length v0, p1

    const v1, 0x7fffffef

    if-gt v0, v1, :cond_0

    sget-object v0, Ld7/k;->e:Ld7/k;

    const-string v1, "AES/CTR/NoPadding"

    invoke-virtual {v0, v1}, Ld7/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    filled-new-array {p2, p1}, [[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ld7/d;->c([[B)[B

    move-result-object p2

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/16 v2, 0x8

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p0, p0, Ld7/d;->b:[B

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    filled-new-array {p2, p0}, [[B

    move-result-object p0

    invoke-static {p0}, LG5/u2;->d([[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "plaintext too long"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B[B)[B
    .locals 8

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    sget-object v0, Ld7/k;->e:Ld7/k;

    const-string v2, "AES/CTR/NoPadding"

    invoke-virtual {v0, v2}, Ld7/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const/16 v5, 0x8

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/16 v5, 0xc

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Ld7/d;->b:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v4, p1

    invoke-static {p1, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    array-length p1, p1

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, LG5/x2;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array v0, v2, [B

    :cond_0
    filled-new-array {p2, v0}, [[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ld7/d;->c([[B)[B

    move-result-object p0

    invoke-static {v3, p0}, LG5/u2;->e([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    const-string p1, "Integrity check failed."

    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Ciphertext too short."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs c([[B)[B
    .locals 7

    array-length v0, p1

    iget-object p0, p0, Ld7/d;->a:LZ3/x;

    const/16 v1, 0x10

    if-nez v0, :cond_0

    sget-object p1, Ld7/d;->e:[B

    invoke-virtual {p0, v1, p1}, LZ3/x;->c(I[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ld7/d;->d:[B

    invoke-virtual {p0, v1, v0}, LZ3/x;->c(I[B)[B

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    new-array v4, v2, [B

    :cond_1
    invoke-static {v0}, LG5/s2;->d([B)[B

    move-result-object v0

    invoke-virtual {p0, v1, v4}, LZ3/x;->c(I[B)[B

    move-result-object v4

    invoke-static {v0, v4}, LG5/u2;->l([B[B)[B

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object p1, p1, v3

    array-length v3, p1

    if-lt v3, v1, :cond_4

    array-length v3, p1

    array-length v4, v0

    if-lt v3, v4, :cond_3

    array-length v3, p1

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_5

    add-int v4, v3, v2

    aget-byte v5, p1, v4

    aget-byte v6, v0, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "xorEnd requires a.length >= b.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    array-length v2, p1

    if-ge v2, v1, :cond_6

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    array-length p1, p1

    const/16 v3, -0x80

    aput-byte v3, v2, p1

    invoke-static {v0}, LG5/s2;->d([B)[B

    move-result-object p1

    invoke-static {v2, p1}, LG5/u2;->l([B[B)[B

    move-result-object p1

    :cond_5
    invoke-virtual {p0, v1, p1}, LZ3/x;->c(I[B)[B

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x must be smaller than a block."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
