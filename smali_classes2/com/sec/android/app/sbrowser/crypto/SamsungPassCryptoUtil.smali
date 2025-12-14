.class public Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CRYPTOGRAPHER:Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    new-instance v1, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;-><init>(Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->CRYPTOGRAPHER:Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;

    return-void
.end method

.method public static decrypt([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->CRYPTOGRAPHER:Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->decrypt([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptPassword(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->updateAlias(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->token:[B

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->updateToken([B)V

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->mayBeEncrypted(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->decrypt([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "decryptPassword : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungPassEncryptionUtil"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static encodeBase64WithMagicString([B)Ljava/lang/String;
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSAP_GNUSMAS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->CRYPTOGRAPHER:Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->encrypt(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptPassword(Ljava/lang/String;)[B
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->mayBeEncrypted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encryptPassword : Failed Base64.decode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SamsungPassEncryptionUtil"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->encrypt(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateKey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->generateKey(Ljava/lang/String;)V

    return-void
.end method

.method public static getKey()[B
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method public static hasToken()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->hasToken()Z

    move-result v0

    return v0
.end method

.method private static mayBeEncrypted(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SSAP_GNUSMAS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->CRYPTOGRAPHER:Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->CRYPTOGRAPHER:Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptographer;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startSession()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->startSession()V

    return-void
.end method

.method public static stopSession()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->stopSession()V

    return-void
.end method

.method public static updateAlias(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne p0, v0, :cond_0

    const-string p0, "Iris"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->PPP:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne p0, v0, :cond_1

    const-string p0, "PIN"

    goto :goto_0

    :cond_1
    const-string p0, "Fingerprint"

    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->updateAlias(Ljava/lang/String;)V

    return-void
.end method

.method public static updateToken([B)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->KEY_STORE:Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassKeyStore;->updateToken([B)V

    return-void
.end method
