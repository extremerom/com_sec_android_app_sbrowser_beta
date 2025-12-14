.class public Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static deleteInternetAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/account/AccountDataHelper;->deleteInternetAccount()V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static processAccountSignOut(Landroid/content/Context;)V
    .locals 2

    const-string v0, "InternetAccountManager"

    const-string v1, "processAccountSignOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->clearAll(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->newInstance(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;->clear()V

    return-void
.end method

.method public static setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "internet_account_id"

    invoke-static {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateStringValuePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateAccountSignIn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "InternetAccountManager"

    const-string v1, "updateAccountSignIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "internet_account_id"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateStringValuePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
