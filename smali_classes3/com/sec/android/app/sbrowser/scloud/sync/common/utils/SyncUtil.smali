.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncUtil"


# direct methods
.method public static checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->TAG:Ljava/lang/String;

    const-string v0, "checkIsWifiOnlySetting() context is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->ALL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    return-object p0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/constants/BrowserContract;->SBROWSER_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "UploadInternet"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->getNetworkSettingsItem(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkIsWifiOnlySetting: wifi setting - "

    invoke-static {v1, v0, p0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->ALL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    :goto_1
    return-object p0
.end method

.method private static getNetworkSettingsItem(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->TAG:Ljava/lang/String;

    const-string p1, "failed to get unstable content provider client~!! "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "key"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    :try_start_0
    const-string v1, "isEnabledItemWifiOnly"

    const-string v2, "GETDB"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V

    move p1, v0

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V

    :goto_2
    return p1

    :goto_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Landroid/content/ContentProviderClient;)V

    throw p1
.end method

.method public static isStorageFull()Z
    .locals 5

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v3, v1

    const-wide/32 v0, 0x3200000

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSyncNetworkAvailable(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->isSyncNow(Landroid/os/Bundle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/SyncUtil;->checkIsWifiOnlySetting(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;->WIFI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/NetworkOption;

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isWifiConnected()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isMobileConnected()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isWifiConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private static isSyncNow(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "ignoreNetworkSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
