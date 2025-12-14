.class public Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mChecked:Z

.field private mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

.field private mFile:Ljava/io/File;

.field private mIsContentUri:Z

.field private mIsDeletePending:Z

.field private mIsInterrupt:Z

.field private mPosition:I

.field private mShouldShowDelayed:Z

.field private mStableId:Ljava/lang/Long;

.field private mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mIsContentUri:Z

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTitle:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private isNewItemVisiblyDifferent(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)I
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mShouldShowDelayed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mShouldShowDelayed:Z

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result v1

    const/4 v3, 0x1

    if-eq p0, v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v6

    cmp-long p0, v4, v6

    if-eqz p0, :cond_3

    return v3

    :cond_3
    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v1

    if-eq p0, v1, :cond_4

    return v3

    :cond_4
    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return v3

    :cond_5
    return v2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL_SAVE_ALL_IMAGES"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->broadcastSaveAllOperationAction(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    const-string v1, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->broadcastDownloadAction(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/lang/String;)V

    return-void
.end method

.method public getBytesReceived()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mFile:Ljava/io/File;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mPosition:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result p0

    return p0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public getStableId()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mStableId:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mStableId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTimestamp()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mStableId:Ljava/lang/Long;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mStableId:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result p0

    return p0
.end method

.method public getTerraceDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    return-object p0
.end method

.method public getTimeRemainingInMillis()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTimeRemainingInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mIsContentUri:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalSize()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDisplayUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasBeenExternallyRemoved()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->hasBeenExternallyRemoved()Z

    move-result p0

    return p0
.end method

.method public isAutoResumable()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isAutoResumable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mChecked:Z

    return p0
.end method

.method public isDeletePending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mIsDeletePending:Z

    return p0
.end method

.method public isDownloading()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPending()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFailed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isResumable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInProgress()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIndeterminate()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->isIndeterminate()Z

    move-result p0

    return p0
.end method

.method public isOffTheRecord()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isAutoResumable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPending()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isResumable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResumable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isResumable()Z

    move-result p0

    return p0
.end method

.method public isSaveAllProgressItem()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p0

    const-string v0, "save_all_images_guid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isVisibleToUser()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDeletePending()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/data/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAction(Landroid/content/Context;Z)V
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    const-string p0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RETRY_SAVE_ALL_IMAGES"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_SAVE_ALL_IMAGES"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string p0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE_SAVE_ALL_IMAGES"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->showRetryDialog(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPaused()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTotalSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTotalSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getBytesReceived()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x1000

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p2, v2}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->checkDownloadSpaceAvailable(Landroid/content/Context;JLjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->broadcastDownloadAction(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8760"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE"

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->broadcastDownloadAction(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8758"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public remove(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result v2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->removeDownload(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public replaceItem(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isNewItemVisiblyDifferent(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)I

    move-result v0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mFile:Ljava/io/File;

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mChecked:Z

    return-void
.end method

.method public setInterrupt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mIsInterrupt:Z

    return-void
.end method

.method public setIsDeletionPending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mIsDeletePending:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mPosition:I

    return-void
.end method

.method public setShouldShowDelayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mShouldShowDelayed:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->mTitle:Ljava/lang/String;

    return-void
.end method
