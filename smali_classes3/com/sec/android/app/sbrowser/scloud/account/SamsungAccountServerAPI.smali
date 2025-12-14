.class public Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAccessTokenExpiredTime:Ljava/lang/String;

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mLogInID:Ljava/lang/String;

.field private mLogInTypeCode:Ljava/lang/String;

.field private final mOkHttpClient:Lhd/I;

.field private mRefreshToken:Ljava/lang/String;

.field private mRefreshTokenExpiredTime:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhd/I;

    invoke-direct {v0}, Lhd/I;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mOkHttpClient:Lhd/I;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccessTokenExpiredTime:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mRefreshToken:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mRefreshTokenExpiredTime:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->getProfileAsync(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    return-object v0
.end method

.method private getProfileAsync(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V
    .locals 3

    new-instance v0, Lhd/L;

    invoke-direct {v0}, Lhd/L;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://api.samsungosp.com/v2/profile/user/user/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhd/L;->f(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Lhd/L;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-osp-appId"

    const-string v2, "4oe3617251"

    invoke-virtual {v0, v1, v2}, Lhd/L;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-osp-userId"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lhd/L;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lhd/L;->b()Lhd/M;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mOkHttpClient:Lhd/I;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lld/i;

    invoke-direct {v2, v1, v0}, Lld/i;-><init>(Lhd/I;Lhd/M;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$2;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V

    invoke-virtual {v2, v0}, Lld/i;->c(Lhd/k;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->parseSamsungAppDataContent(Ljava/lang/String;)V

    return-void
.end method

.method private parseSamsungAppDataContent(Ljava/lang/String;)V
    .locals 6

    const-string v0, "SamsungAccountServerAPI"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    if-eq p1, v3, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v5, -0x28c9d955

    if-eq v1, v5, :cond_2

    const v5, 0x1467c244

    if-eq v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "loginID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v4

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v1, v4

    goto :goto_4

    :cond_2
    const-string v1, "loginIDTypeCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, -0x1

    :goto_2
    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mLogInID:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginID : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mLogInID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mLogInTypeCode:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginIDTypeCode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mLogInTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->setAccountInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/io/StringReader;->close()V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    :goto_4
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse failed : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    :cond_7
    :goto_5
    return-void

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    :cond_8
    throw p0
.end method

.method private setAccountInfo()V
    .locals 13

    const-string v0, "us-auth2.samsungosp.com"

    const-string v1, "SamsungAccountServerAPI"

    const-string v2, "parseAndSaveAuthToken error : "

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccessTokenExpiredTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mRefreshTokenExpiredTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v12, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mLogInID:Ljava/lang/String;

    const-string v6, "com.internet.app.signin"

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccessToken:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mUserId:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setUserId(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setRefreshTokenExpiredTime(J)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setAuthServerUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->setApiServerUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount$Builder;->build()Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/account/AccountDataHelper;->insertInternetAccount(Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Landroid/accounts/Account;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->deleteInternetAccountInSystemSetting(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_skip_duplicate_check

    array-length v4, v3

    const/4 v5, 0x0

    :goto_check_duplicates
    if-ge v5, v4, :cond_skip_duplicate_check

    aget-object v6, v3, v5

    if-eqz v6, :cond_continue_loop

    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v7, :cond_continue_loop

    iget-object v8, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v8, :cond_continue_loop

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_continue_loop

    const-string v7, "SamsungAccountServerAPI"

    const-string v8, "Removing duplicate account before adding new one"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v7, v6}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v7

    if-nez v7, :cond_continue_loop

    const-string v7, "SamsungAccountServerAPI"

    const-string v8, "Failed to remove duplicate account"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_continue_loop
    add-int/lit8 v5, v5, 0x1

    goto :goto_check_duplicates

    :cond_skip_duplicate_check
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {p0, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->setInternetAccountToCache(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.INTERNET_ACCOUNT_SIGNIN_COMPLETED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "accountId"

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "accountType"

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setAccountInfo error : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getTokenAsync(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lhd/s;

    invoke-direct {v0}, Lhd/s;-><init>()V

    const-string v1, "content-type"

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Lhd/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-virtual {v0, v1, v2}, Lhd/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, "4oe3617251"

    invoke-virtual {v0, v1, v2}, Lhd/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Lhd/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code_verifier"

    invoke-virtual {v0, p2, p3}, Lhd/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lhd/t;

    iget-object p3, v0, Lhd/s;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Lhd/s;->b:Ljava/util/ArrayList;

    invoke-direct {p2, p3, v0}, Lhd/t;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-instance p3, Lhd/L;

    invoke-direct {p3}, Lhd/L;-><init>()V

    const-string v0, "https://auth.samsungosp.com/auth/oauth2/token"

    invoke-virtual {p3, v0}, Lhd/L;->f(Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {p3, v0, p2}, Lhd/L;->d(Ljava/lang/String;Lhd/Q;)V

    invoke-virtual {p3}, Lhd/L;->b()Lhd/M;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->mOkHttpClient:Lhd/I;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lld/i;

    invoke-direct {v0, p3, p2}, Lld/i;-><init>(Lhd/I;Lhd/M;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;)V

    invoke-virtual {v0, p2}, Lld/i;->c(Lhd/k;)V

    return-void
.end method
