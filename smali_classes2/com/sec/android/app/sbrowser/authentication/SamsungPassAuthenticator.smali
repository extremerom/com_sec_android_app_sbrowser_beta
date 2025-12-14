.class public Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->getAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->getNonce(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)[B

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Z[B)V

    return-object v1
.end method

.method public static getAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getEnabledAuthenticators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Iris"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v1, v6

    :cond_1
    const-string v5, "Fingerprint"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v6

    :cond_2
    const-string v5, "ppp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseIntelligentScan()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_4
    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintAndIris()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseIris()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_8
    if-eqz v3, :cond_9

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->PPP:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_9
    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0
.end method

.method private static getNonce(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)[B
    .locals 1

    const-string v0, "PIN"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->generateKey(Ljava/lang/String;)V

    const-string v0, "Fingerprint"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->generateKey(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->isIrisBasedAuthenticator(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Iris"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->generateKey(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->getKey()[B

    move-result-object p0

    return-object p0
.end method

.method private static isIrisBasedAuthenticator(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
