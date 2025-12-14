.class public Lcom/sec/android/app/sbrowser/scloud/utils/CloudControlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudControlUtil"


# direct methods
.method public static disableInternetSync(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/utils/CloudControlUtil;->TAG:Ljava/lang/String;

    const-string v1, "disableInternetSync is called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "com.internet.app.signin"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-static {p0, v2, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string p0, "Internet sync disabled!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
