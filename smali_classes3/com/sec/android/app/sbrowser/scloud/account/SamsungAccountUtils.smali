.class public Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkInternetAccountAndSave(Landroid/content/Context;)V
    .locals 2

    const-string v0, "internet_account_id"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getStringValuePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isSignedInInternetAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungAccountUtils"

    const-string v1, "checkInternetAccountAndSave"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->createInternetAccountFromCache(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/account/AccountDataHelper;->insertInternetAccount(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static createInternetAccountFromCache(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;
    .locals 15

    const-string v0, "SamsungAccountUtils"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getInternetAccount()Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    const-string v3, "access_token_expires_in"

    invoke-virtual {p0, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v3, "refresh_token"

    invoke-virtual {p0, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    const-string v4, "refresh_token_expires_in"

    invoke-virtual {p0, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v4, "last_update_time"

    invoke-virtual {p0, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "inputEmailID"

    invoke-virtual {p0, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "type"

    invoke-virtual {p0, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "userId"

    invoke-virtual {p0, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "access_token"

    invoke-virtual {p0, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "Created Internet Account from cache."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {p0, v14}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setUserId(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object p0

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setRefreshTokenExpiredTime(J)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->build()Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "parseAndSaveAuthToken error : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :catch_1
    const-string p0, "Failed to parse lastUpdateTime as long"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    const-string p0, "Failed to parse refreshTokenExpiredIn as long"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static deleteInternetAccountInSystemSetting(Landroid/content/Context;)V
    .locals 4

    const-string v0, "deleteInternetAccountInSystemSetting"

    const-string v1, "SamsungAccountUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getInternetAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "com.internet.app.signin"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Delete Account in system setting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    :cond_0
    return-void
.end method

.method public static getCodeVerifier(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "codeVerifier"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getStringValuePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRequest(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "requested"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getState(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getStringValuePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->getState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static setCodeVerifier(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "codeVerifier"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateStringValuePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setInternetAccountToCache(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;)V
    .locals 5

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, "inputEmailID"

    iget-object v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_token"

    iget-object v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_token_expires_in"

    iget-wide v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authTokenExpiredTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "last_update_time"

    iget-wide v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshTokenExpiredTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "SamsungAccountUtils"

    const-string v2, "The parameter of samsung account are invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "userId"

    iget-object v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refresh_token"

    iget-object v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refresh_token_expires_in"

    iget-wide v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->refreshTokenExpiredTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SamsungAccountUtils"

    const-string p1, "Set the internet account to account cache."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setRequest(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "requested"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateBooleanValuePrivate(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateStringValuePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
