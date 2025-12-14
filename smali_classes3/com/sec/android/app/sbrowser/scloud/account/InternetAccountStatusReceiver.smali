.class public Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p0, "InternetAccountStatusReceiver"

    if-nez p2, :cond_0

    const-string p1, "onReceive. Invalid params"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "accountId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.INTERNET_ACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "Get action : INTERNET_ACCOUNT_SIGNIN_COMPLETED"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isSignedInInternetAccount()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->updateAccountSignIn(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.intent.action.INTERNET_ACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p2, "Get action : INTERNET_ACCOUNT_SIGNOUT_COMPLETED"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isSignedInInternetAccount()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->deleteInternetAccount(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountManager;->processAccountSignOut(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string p1, "INTERNET ACCOUNT is signed in!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "com.samsung.android.intent.action.INTERNET_ACCOUNT_REMOVE_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Get action : INTERNET_ACCOUNT_REMOVED"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->deleteInternetAccountInSystemSetting(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string p1, "Unknown action"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
