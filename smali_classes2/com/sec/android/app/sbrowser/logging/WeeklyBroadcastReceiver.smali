.class public Lcom/sec/android/app/sbrowser/logging/WeeklyBroadcastReceiver;
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
    .locals 9

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "com.samsung.android.providers.context.WEEKLY_BROADCAST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "WeeklyBroadcastReceiver"

    if-eqz p2, :cond_7

    const-string p2, "onReceive WEEKLY_BROADCAST."

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessContract$Normal;->QUICKACCESS_URI:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    const-string p2, "0010"

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const-string p2, "privacy_mode_password"

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    const-string p2, "0180"

    const-string v8, ""

    invoke-static {v1, p2, v8, v6, v7}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string p2, "privacy_mode_fingerprint"

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_3

    move-wide v6, v2

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    const-string p2, "0181"

    invoke-static {v1, p2, v8, v6, v7}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string p2, "privacy_mode_iris"

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p0, :cond_4

    const-string p0, "On"

    goto :goto_3

    :cond_4
    const-string p0, "Off"

    :goto_3
    const-string v0, "0259"

    const-wide/16 v6, -0x1

    invoke-static {p2, v0, p0, v6, v7}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "0271"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerAppsInstalled(Landroid/content/Context;)Z

    move-result p0

    const-string p2, "0191"

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "ON"

    invoke-static {p0, p2, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "0293"

    invoke-static {p1, p2, p0, v6, v7}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "OFF"

    invoke-static {p0, p2, p1, v4, v5}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "NO_ITEM"

    invoke-static {p0, p2, p1, v6, v7}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    :goto_4
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw p0

    :cond_7
    const-string p0, "onReceive intent but nothing happened."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    return-void
.end method
