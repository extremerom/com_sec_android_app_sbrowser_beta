.class Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mKeyStore:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

.field private final mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mKeyStore:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    return-void
.end method


# virtual methods
.method public decrypt([B)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mKeyStore:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mKeyStore:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->getKey()[B

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mKeyStore:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->getToken()[B

    move-result-object p0

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->decrypt([BLjava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->encrypt(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
