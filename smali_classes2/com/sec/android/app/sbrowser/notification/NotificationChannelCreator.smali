.class public Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDone:Z


# direct methods
.method public static declared-synchronized createAllNotificationChannel(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->sDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createNotificationChannels(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->sDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized createNotificationChannels(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->createAllNotificationChannelGroup(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/notification/MediaNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/MediaNotificationChannel;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/notification/DownloadNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/DownloadNotificationChannel;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/notification/OtherNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/OtherNotificationChannel;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInternetAccountEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/notification/SamsungAccountNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/SamsungAccountNotificationChannel;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->deleteSamsungAccountNotificationChannel(Landroid/content/Context;)V

    :goto_0
    new-instance v1, Lcom/sec/android/app/sbrowser/notification/IntentBlockerNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/IntentBlockerNotificationChannel;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/notification/ExtensionsNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/ExtensionsNotificationChannel;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isWebPushFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/notification/WebsitesNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/WebsitesNotificationChannel;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->deleteWebsiteNotificationChannel(Landroid/content/Context;)V

    :goto_1
    new-instance v1, Lcom/sec/android/app/sbrowser/notification/BackupRestoreNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/BackupRestoreNotificationChannel;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/notification/NetworkNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/NetworkNotificationChannel;-><init>(Landroid/content/Context;)V

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/notification/ReadAloudNotificationChannel;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/notification/ReadAloudNotificationChannel;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/SBrowserNotificationChannel;->deletePromotionsNotificationChannel(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
