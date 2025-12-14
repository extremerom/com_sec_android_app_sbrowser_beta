.class public abstract Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkCancelled(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkFailure(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkInterrupted(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method private cancelNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method private cancelOngoingNotifications()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelSummaryNotification()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    const v0, 0xbde31

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method private createAndExecuteApkDownloader(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    invoke-direct {v0, p2, v1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;-><init>(Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDownloadWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ApkDownloadWorkerThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->setDownloader(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadAPK RejectedExecutionException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApkDCService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->removeDownloadTask(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;JJI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkProgress(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;JJI)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkSuccess(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleInstallApkFailure(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleInstallApkSuccess(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method private getNotification(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->getApkDownloadNotification()Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string p0, "ApkDCService"

    const-string p1, "there is no notification type."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->installFailedNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelNotification(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->downloadInterruptedNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelNotification(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelNotification(I)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->downloadFailedNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelNotification(I)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->installingNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelNotification(I)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;->downloadingNotification(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->requestInstallApk(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method private handleDownloadApkCancelled(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->removeDownloadTask(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    return-void
.end method

.method private handleDownloadApkFailure(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->removeDownloadTask(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onDownloadApkFail: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "ApkDCService"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleDownloadApkInterrupted(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->removeDownloadTask(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    return-void
.end method

.method private handleDownloadApkProgress(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;JJI)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setReceivedBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object p3

    invoke-virtual {p3, p5, p6}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setTotalBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object p3

    invoke-virtual {p3, p7}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setPercentCompleted(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->setDownloadNotificationInfo(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    return-void
.end method

.method private handleDownloadApkSuccess(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->setDownloadNotificationInfo(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDownloadWorkerThread;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ApkDownloadWorkerThread;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersWorkerThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleInstallApkFailure(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleInstallApkFailure package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkDCService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->removeDownloadTask(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handleInstallApkFailure: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleInstallApkSuccess(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleInstallApkSuccess package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkDCService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->setDownloadNotificationInfo(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->removeDownloadTask(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->handleDefaultTurnOnBlocker(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleInstallApkSuccess: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->addInstalledPackageNameFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->sendSAEventLog(Ljava/lang/String;)V

    return-void
.end method

.method private requestInstallApk(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getApkFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller;->installPackage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;)V

    return-void
.end method

.method private showSummaryNotificationIfNeeded(Landroid/app/job/JobParameters;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->getActiveNotificationsSize()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->summaryNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p0, p1, v0}, LA2/q;->x(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Landroid/app/Notification;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->summaryNotification()Landroid/app/Notification;

    move-result-object p0

    const v0, 0xbde31

    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getReceivedBytes()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getMegaBytesFromBytes(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getTotalBytes()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getMegaBytesFromBytes(J)Ljava/lang/String;

    move-result-object v6

    const-string v1, "ApkDCService"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v10, "packageName : %s, appName : %s, %s / %s (%d%%), type : %d, id: %d"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPercentCompleted()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->getNotification(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p2

    invoke-static {p0, p1, p2, v1}, LA2/q;->w(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;ILandroid/app/Notification;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->showSummaryNotificationIfNeeded(Landroid/app/job/JobParameters;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p2

    invoke-virtual {v2, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->showSummaryNotificationIfNeeded(Landroid/app/job/JobParameters;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract clearLastNotificationId(Landroid/content/Context;)V
.end method

.method public abstract createAllNotificationChannel(Landroid/content/Context;)V
.end method

.method public getActiveNotificationsSize()I
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const v6, 0xbde31

    if-eq v5, v6, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->isNotificationGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public abstract getApkDownloadNotification()Lcom/sec/android/app/sbrowser/common/blockers/ApkDCNotification;
.end method

.method public abstract getManager()Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;
.end method

.method public abstract handlePendingIntentFromNotification(Landroid/content/Intent;)Z
.end method

.method public abstract hasActiveDownloadsInfo()Z
.end method

.method public abstract isNotificationGroup(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "ApkDCService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->getManager()Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->createAllNotificationChannel(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ApkDCService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelSummaryNotification()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelOngoingNotifications()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->clearLastNotificationId(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onStartCommand: intent = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ApkDCService"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "schedulerFail"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "packageName"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    invoke-direct {p3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;-><init>()V

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkFailure(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    :cond_0
    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handlePendingIntentFromNotification(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->hasActiveDownloadsInfo()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onStartCommand: perform cleanup on service restart"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelSummaryNotification()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelOngoingNotifications()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->cancelRunningDownloads()V

    :cond_2
    return p2
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    const-string v0, "ApkDCService"

    const-string v1, "onStartJob"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->fromBundle(Landroid/os/PersistableBundle;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setAppName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setStartTime(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setReceivedBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setTotalBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setPercentCompleted(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setNotificationId(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->mManager:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->setDownloadNotificationInfo(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->updateApkDownloadNotification(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->createAndExecuteApkDownloader(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    const-string v0, "ApkDCService"

    const-string v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->fromBundle(Landroid/os/PersistableBundle;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkFailure(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "onUnbind"

    const-string v1, "ApkDCService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->hasActiveDownloadsInfo()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onUnbind no ActiveDownloadsInfo"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->cancelOngoingNotifications()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onUnbind: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract summaryNotification()Landroid/app/Notification;
.end method
