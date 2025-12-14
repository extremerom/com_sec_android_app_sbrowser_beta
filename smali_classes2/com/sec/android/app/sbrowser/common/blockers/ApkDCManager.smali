.class public abstract Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;
    }
.end annotation


# instance fields
.field private final mActiveDownloadsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningApkDownloaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mActiveDownloadsInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mRunningApkDownloaderMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-void
.end method

.method private cancelDownloadTask(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->isExistActiveDownloadTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->isExistDownloadAsyncTask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mRunningApkDownloaderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mRunningApkDownloaderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mActiveDownloadsInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleScheduleFail(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "schedulerFail"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "packageName"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private isExistActiveDownloadTask(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mActiveDownloadsInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isExistDownloadAsyncTask(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mRunningApkDownloaderMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized requestInstallAfterDownloadInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ApkDCManager"

    const-string v1, "requestInstallAfterDownloadInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->isExistActiveDownloadTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ApkDCManager"

    const-string p2, "isExistActiveDownloadTask true"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getLastNotificationId(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v3, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_3

    invoke-static {v0}, LA2/q;->h(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->setLastNotificationId(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-eq v0, v2, :cond_5

    const-string v0, "ApkDCManager"

    const-string v1, "requestInstallAfterDownloadInternal - cannot schedule job"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->handleScheduleFail(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    goto :goto_1

    :cond_4
    const-string v0, "ApkDCManager"

    const-string v1, "requestInstallAfterDownloadInternal - job scheduler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->handleScheduleFail(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public abstract addInstalledPackageNameFromDirectDownload(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelDownloadTaskFromUI(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cancelDownloadTaskFromUI"

    const-string v1, "ApkDCManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->cancelDownloadTask(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "cancelDownloadTaskFromUI: cancelDownloadTask failed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public cancelRunningDownloads()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mRunningApkDownloaderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->cancelDownloadTask(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_1
    return-void
.end method

.method public abstract getDownloadDir(Landroid/content/Context;)Ljava/io/File;
.end method

.method public getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mActiveDownloadsInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public abstract getLastNotificationId(Landroid/content/Context;)I
.end method

.method public abstract getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
.end method

.method public abstract handleDefaultTurnOnBlocker(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public hasActiveDownloadsInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mActiveDownloadsInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyObservers(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onInstallApkFailure(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onInstallApkSuccess(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onInstallApkStarted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onDownloadApkInterrupted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onDownloadApkCancelled(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onDownloadApkFailure(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_6
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onDownloadApkSuccess(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_7
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onDownloadApkProgressUpdate(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :pswitch_8
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;->onDownloadApkStarted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadTask(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mActiveDownloadsInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mRunningApkDownloaderMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;->cancel()V

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestInstallAfterDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ApkDCManager"

    const-string v1, "requestInstallAfterDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".apk"

    invoke-static {p2, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setAppName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->setApkFile(Ljava/io/File;)Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->requestInstallAfterDownloadInternal(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method public abstract sendSAEventLog(Ljava/lang/String;)V
.end method

.method public setDownloadNotificationInfo(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mActiveDownloadsInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDownloader(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->mRunningApkDownloaderMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract setLastNotificationId(Landroid/content/Context;I)V
.end method
