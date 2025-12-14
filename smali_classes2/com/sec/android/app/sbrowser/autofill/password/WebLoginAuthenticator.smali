.class public Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->getAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    return-object v0
.end method

.method public static getAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIrisWebSigninInSBrowser()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseFingerprintWebSigninInSBrowser()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIntelligentWebSigninInSBrowser()Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIrisWebLoginEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isFingerprintWebLoginEnabled()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIntelligentWebLoginEnabled()Z

    move-result v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0

    :cond_6
    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isFingerprintWebLoginEnabled()Z
    .locals 6

    const-string v0, "WebLoginAuthenticator"

    const-string v1, "isFingerprintWebLoginEnabled: "

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "fingerprint_webpass"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isFingerprintWebLoginEnabled - PAI test on eng? : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isIntelligentWebLoginEnabled()Z
    .locals 6

    const-string v0, "WebLoginAuthenticator"

    const-string v1, "isIntelligentWebLoginEnabled: "

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseIntelligentScan()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "intelligentscan_webpass"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isIntelligentWebLoginEnabled - PAI test on eng?: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isIrisWebLoginEnabled()Z
    .locals 6

    const-string v0, "WebLoginAuthenticator"

    const-string v1, "isIrisWebLoginEnabled: "

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseIris()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isWebLoginForceEnabled()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "iris_webpass"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isIrisWebLoginEnabled - PAI test on eng?: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isWebLoginEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isFingerprintWebLoginEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIrisWebLoginEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIntelligentWebLoginEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shouldUseFingerprintWebSigninInSBrowser()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "pref_use_fingerprint_web_signin_in_sbrowser"

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isFingerprintWebLoginEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldUseIntelligentWebSigninInSBrowser()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "pref_use_intelligent_scan_web_signin_in_sbrowser"

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIntelligentWebLoginEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldUseIrisWebSigninInSBrowser()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "pref_use_iris_web_signin_in_sbrowser"

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIrisWebLoginEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldUseWebSigninInSBrowser()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseFingerprintWebSigninInSBrowser()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIrisWebSigninInSBrowser()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIntelligentWebSigninInSBrowser()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldUseWebSigninInSBrowser Fingerprint:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Iris:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Intelligent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WebLoginAuthenticator"

    invoke-static {v4, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
