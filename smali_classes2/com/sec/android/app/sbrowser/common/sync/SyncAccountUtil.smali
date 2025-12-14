.class public Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAccountManager:Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

.field private static sLastLaunchedTime:J


# direct methods
.method private static declared-synchronized getAccountManager()Lcom/sec/android/app/sbrowser/common/account/IAccountManager;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sAccountManager:Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInternetAccountEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/account/InternetAccountManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/account/InternetAccountManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sAccountManager:Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountManager;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sAccountManager:Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sAccountManager:Lcom/sec/android/app/sbrowser/common/account/IAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInternetAccount()Landroid/accounts/Account;
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SyncAccountUtil"

    if-nez v0, :cond_0

    const-string v0, "getInternetAccount() context is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "com.internet.app.signin"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v0, v0, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getInternetAccount RuntimeException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static getSamsungAccount()Landroid/accounts/Account;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getAccountManager()Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/account/IAccountManager;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static getSamsungAccountName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getAccountManager()Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/account/IAccountManager;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSamsungAccountType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getAccountManager()Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/account/IAccountManager;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertAccountDetails(Landroid/content/ContentValues;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    if-ne p1, v0, :cond_0

    const-string p1, "ACCOUNT_NAME"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ACCOUNT_TYPE"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isAccountsLoggedIn()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSignedInInternetAccount()Z
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SyncAccountUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "isSignedInInternetAccount() context is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    const-string v3, "com.internet.app.signin"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isSignedInInternetAccount SecurityException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static declared-synchronized resetAccountManager()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sAccountManager:Lcom/sec/android/app/sbrowser/common/account/IAccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static resetLastLaunchedTime()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sLastLaunchedTime:J

    return-void
.end method

.method public static startAddSamsungAccountActivity(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sLastLaunchedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string p0, "SyncAccountUtil"

    const-string v0, "Prevent multiple launching of Samsung Account activity"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->sLastLaunchedTime:J

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getAccountManager()Lcom/sec/android/app/sbrowser/common/account/IAccountManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/account/IAccountManager;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    return-void
.end method
