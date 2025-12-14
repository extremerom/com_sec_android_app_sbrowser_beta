.class Lcom/sec/terrace/browser/installedapp/TinPackageHash;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSalt:[B


# direct methods
.method private static getGlobalSalt()[B
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/installedapp/TinPackageHash;->sSalt:[B

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;

    invoke-direct {v0}, Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;-><init>()V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/crypto/TinByteArrayGenerator;->getBytes(I)[B

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/installedapp/TinPackageHash;->sSalt:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/terrace/browser/installedapp/TinPackageHash;->sSalt:[B

    return-object v0
.end method

.method public static getSalt()[B
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/installedapp/TinPackageHash;->sSalt:[B

    return-object v0
.end method

.method public static hashForPackage(Ljava/lang/String;)S
    .locals 4

    const-string v0, "HmacSHA256"

    invoke-static {}, Lcom/sec/terrace/browser/installedapp/TinPackageHash;->getGlobalSalt()[B

    move-result-object v1

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_1
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setSalt([B)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/terrace/browser/installedapp/TinPackageHash;->sSalt:[B

    return-void
.end method
