.class Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mKeyAlias:Ljava/lang/String;

.field private final mKeyStorage:Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyAlias:Ljava/lang/String;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyStorage:Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;

    return-void
.end method

.method private decrypt([B)[B
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->decryptData([B)[B

    move-result-object p0

    return-object p0
.end method

.method private encrypt([B)[B
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->encryptData([B)[B

    move-result-object p0

    return-object p0
.end method

.method private generateRandomKey()[B
    .locals 3

    const/16 p0, 0x100

    const/4 v0, 0x0

    :try_start_0
    new-array v1, p0, [B

    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-static {v1, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generateRandomKey failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "KeyStore"

    invoke-static {p0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public getKey()[B
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyStorage:Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyStorage:Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->generateRandomKey()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->encrypt([B)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->putKey(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyStorage:Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sqlcipher/KeyStorage;->getKey(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteKeyStore;->decrypt([B)[B

    move-result-object p0

    return-object p0
.end method
