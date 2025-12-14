.class public Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;
.super Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadHandler:Landroid/os/Handler;

.field private mDownloadHandlerThread:Landroid/os/HandlerThread;

.field private volatile mPausedState:Z

.field private mPendingDownloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQueueProgressing:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SaveAllDownloadHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPendingDownloadMap:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->lambda$startDownloading$0(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/SharedPreferences;Ljava/lang/Runnable;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->lambda$checkPermission$1(Landroid/content/SharedPreferences;Ljava/lang/Runnable;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method

.method private backupQueue()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->add(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V

    goto :goto_0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->queueImageDownload()V

    return-void
.end method

.method private cleanupQueue()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private clear(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->notify(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->cleanup()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->cleanupQueue()V

    return-void
.end method

.method private getCurrentTimeFormat()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd_HHmmss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initHandlers()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "DownloadImageHelperImpl"

    const-string v0, "Bad state context empty!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mUiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mUiThreadHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method private static synthetic lambda$checkPermission$1(Landroid/content/SharedPreferences;Ljava/lang/Runnable;Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p3, "pref_request_permission_storage"

    const/4 v0, 0x1

    invoke-interface {p0, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    array-length p0, p4

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget p0, p4, p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$startDownloading$0(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->setFileUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->setReferrerUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->setFeatureId(I)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    move-result-object v0

    const-string v1, "Accept: image/*"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->setHeaders(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->setShouldBlockNotify(Z)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getIsOffTheRecord()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->setIsOffTheRecord(Z)Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadParams$Builder;->build()Lcom/sec/android/app/sbrowser/download/DownloadParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->requestDownload(Lcom/sec/android/app/sbrowser/download/DownloadParams;)V

    return-void
.end method

.method private notify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    if-eqz p1, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized queueImageDownload()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->startDownloading(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private restoreQueue()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->getCurrentTimeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->removeFirst()Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v5, "Internet_"

    if-ne v1, v2, :cond_1

    invoke-static {v5, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v6, "_"

    invoke-static {v5, v0, v6}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, v6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->setFileName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private resumeDownload()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->retryDownload(Z)V

    return-void
.end method

.method private retryDownload(Z)V
    .locals 6

    const-string v0, "retryDownload, isOperationResume: "

    const-string v1, "DownloadImageHelperImpl"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string v0, "save_image_resume"

    goto :goto_0

    :cond_0
    const-string v0, "save_all_start"

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v2

    const-string v3, "total_images_to_download"

    const-class v4, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    if-nez v2, :cond_1

    const-string p1, "Network not available"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    const-string v0, "save_image_stop"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->notify(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showNoNetworkSnackbar()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->initHandlers()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "files_to_add"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationStart(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->restoreQueue()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    if-nez p1, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->queueImageDownload()V

    :cond_3
    return-void
.end method

.method private startDownloading(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->cleanupQueue()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->add(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DownloadImageHelperImpl"

    const-string p2, "Network not available"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->stopProcessForRetry()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showNoNetworkSnackbar()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mUiThreadHandler:Landroid/os/Handler;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isAtLeastRos()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_request_permission_storage"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    check-cast p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showPermissionAlert(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/a;

    invoke-direct {v0, p0, p3, p4}, Lcom/sec/android/app/sbrowser/download/a;-><init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getPendingSaveAllDownloadsMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPendingDownloadMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public init()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Lr/d;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->checkAndResetDownloadRelativePath()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showNoNetworkSnackbar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->initHandlers()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->restoreQueue()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->cleanup()V

    :cond_3
    return-void
.end method

.method public maintainPendingSaveAllDownloadsMap(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/download/DownloadConstants;->SAVE_ALL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getIsOffTheRecord()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPendingDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPendingDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "save_image_success"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_off_the_record"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOperationCancel()V
    .locals 2

    const-string v0, "DownloadImageHelperImpl"

    const-string v1, "onOperationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "save_image_cancel"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->clear(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPendingDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onOperationClear()V
    .locals 2

    const-string v0, "DownloadImageHelperImpl"

    const-string v1, "onOperationClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "save_image_clear"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->clear(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onOperationCompleted()V
    .locals 2

    const-string v0, "DownloadImageHelperImpl"

    const-string v1, "onOperationCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->cleanup()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->cleanupQueue()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPendingDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onOperationPause()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->backupQueue()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->cleanupQueue()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "save_image_pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onOperationResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->resumeDownload()V

    return-void
.end method

.method public onOperationRetry()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showNoNetworkSnackbar()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->retryDownload(Z)V

    return-void
.end method

.method public onOperationStart()V
    .locals 0

    return-void
.end method

.method public onOperationWaitToRetry()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    return-void
.end method

.method public onTaskRemoved()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;->getIsOffTheRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mDownloadHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->cleanupOffTheRecordItems()V

    :goto_2
    return-void
.end method

.method public resumeAfterRestart(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->cleanup()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->getCurrentTimeFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getInstance()Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->init()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "save_all_download_off_the_record"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    if-eqz v3, :cond_3

    const-string v5, "save_image_pause"

    goto :goto_1

    :cond_3
    const-string v5, "save_all_start"

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v7

    invoke-virtual {p0, v5, v7, v4}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->startNotificationService(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationStart(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/constants/download/DownloadConstants;->SAVE_ALL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "Internet_"

    if-ne v7, v1, :cond_4

    if-ne v0, v1, :cond_4

    invoke-static {v8, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    const-string v7, "_"

    invoke-static {v8, v2, v7}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v0, v8

    :goto_3
    new-instance v8, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    aget-object v9, v5, v6

    const/4 v10, 0x2

    aget-object v10, v5, v10

    const/4 v11, 0x3

    aget-object v5, v5, v11

    const-string v11, "false"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-direct {v8, v9, v7, v10, v5}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->add(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v5, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {p0, v8, v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->maintainPendingSaveAllDownloadsMap(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;Z)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->addDownloadImageProgressListener(Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;)V

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationPause()V

    goto :goto_5

    :cond_7
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    if-nez p1, :cond_8

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->queueImageDownload()V

    :cond_8
    :goto_5
    return-void
.end method

.method public startNotificationService(Ljava/lang/String;IZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "total_images_to_download"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_off_the_record"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "files_to_add"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->startSaveAllNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public stopProcessForRetry()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->backupQueue()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mContext:Landroid/content/Context;

    const-string v1, "save_image_stop"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->notify(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->cleanupQueue()V

    return-void
.end method

.method public triggerDownload(Lcom/sec/terrace/Terrace;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/Terrace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->mIsTest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->getCurrentTimeFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->init()V

    const-string v4, "2262"

    int-to-long v5, v2

    const-string v7, "226"

    invoke-static {v7, v4, v5, v6}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isIncognito()Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    const-string v5, "save_all_start"

    invoke-virtual {p0, v5, v2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->startNotificationService(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationStart(Z)V

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_3

    const-string v6, "Internet_"

    if-ne v2, v1, :cond_2

    if-ne v0, v1, :cond_2

    invoke-static {v6, v3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    const-string v7, "_"

    invoke-static {v6, v3, v7}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v0, v7

    :goto_2
    new-instance v7, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8, v6, p3, p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->maintainPendingSaveAllDownloadsMap(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueue:Ljava/util/Queue;

    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->addDownloadImageProgressListener(Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mQueueProgressing:Z

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->mPausedState:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->queueImageDownload()V

    :cond_4
    return-void
.end method
