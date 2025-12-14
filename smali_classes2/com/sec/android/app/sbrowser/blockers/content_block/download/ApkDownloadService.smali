.class public Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadService;
.super Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownloadFromNotification(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "cancelDownloadFromNotification: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApkDownloadNotificationService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->cancelDownloadTaskFromUI(Ljava/lang/String;)V

    return-void
.end method

.method public clearLastNotificationId(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->clearLastNotificationId(Landroid/content/Context;)V

    return-void
.end method

.method public createAllNotificationChannel(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    return-void
.end method

.method public getApkDownloadNotification()Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;-><init>()V

    return-object p0
.end method

.method public getManager()Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public handlePendingIntentFromNotification(Landroid/content/Intent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ApkDownloadNotificationService"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string p0, "action is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getDefaultAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "609"

    const-string v6, "com.sec.android.app.sbrowser.beta.content_block.download.DOWNLOAD_CANCEL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v1, "com.sec.android.app.sbrowser.beta.content_block.download.REMOVE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "invalid action"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v0, "startActivity"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "6167"

    invoke-static {v5, p1, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->launchExtensionsContentBlockerFromNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string p1, "6165"

    invoke-static {v5, p1, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadService;->cancelDownloadFromNotification(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasActiveDownloadsInfo()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->hasActiveDownloadsInfo()Z

    move-result p0

    return p0
.end method

.method public isNotificationGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object p0

    const-string p1, "content_block_notification_group"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public summaryNotification()Landroid/app/Notification;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadNotification;->summaryNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
