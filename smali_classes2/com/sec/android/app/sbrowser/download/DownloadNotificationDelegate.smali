.class public Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mContext:Landroid/content/Context;

.field mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

.field mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadNotifier;Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getSuccessNotificationId(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private updateDownloadSuccessNotification(Lcom/sec/android/app/sbrowser/download/DownloadProgress;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;Lcom/sec/android/app/sbrowser/download/DownloadProgress;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public updateAllNotifications(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/DownloadProgress;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v4

    iget v5, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v3, 0x4

    if-eq v5, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsAutoResumable:Z

    invoke-interface {v3, v4, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadCanceled(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadFailed(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadNotificationDelegate"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->updateDownloadSuccessNotification(Lcom/sec/android/app/sbrowser/download/DownloadProgress;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    invoke-interface {v2, v4}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadPaused(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    iget-wide v5, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mStartTimeInMillis:J

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mCanDownloadWhileMetered:Z

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
