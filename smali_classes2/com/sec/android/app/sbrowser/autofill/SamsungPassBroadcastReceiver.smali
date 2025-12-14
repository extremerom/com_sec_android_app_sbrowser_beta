.class public Lcom/sec/android/app/sbrowser/autofill/SamsungPassBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "migrate autofill data to Samsung Pass on Launch"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassBroadcastReceiver;->lambda$updateSharedPreference$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateSharedPreference$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private updateSharedPreference(Landroid/content/Context;)V
    .locals 2

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, LB2/h;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LB2/h;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungPassBroadcastReceiver"

    if-nez v0, :cond_0

    const-string p0, "onReceive: intentAction is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "package:com.samsung.android.samsungpass"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "com.samsung.android.sbrowser.easysignin.ACTION_MIGRATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "ACTION_MIGRATION intent received from Samsung Pass"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->canPackageSupportOnBoardingDataMigration()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "Samsung Pass does not support onboarding data migration"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassBroadcastReceiver;->updateSharedPreference(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
