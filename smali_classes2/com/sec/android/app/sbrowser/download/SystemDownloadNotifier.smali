.class public Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/DownloadNotifier;
.implements Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;
    }
.end annotation


# instance fields
.field private mActiveDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplicationContext:Landroid/content/Context;

.field private mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mIsServiceBound:Z

.field private mPendingNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mActiveDownloads:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;-><init>(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;)Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    return-void
.end method

.method private startAndBindService()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->startDownloadNotificationService(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private startAndBindToServiceIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mIsServiceBound:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->startAndBindService()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mIsServiceBound:Z

    return-void
.end method

.method private unbindServiceIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mActiveDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mIsServiceBound:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->removeObserver(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->unbindService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mIsServiceBound:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->startAndBindToServiceIfNeeded()V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    if-nez v2, :cond_3

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    iget-object v4, v3, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget v3, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->resumeAllPendingDownloads()V

    return-void

    :cond_4
    iget-object v2, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    if-nez v2, :cond_5

    return-void

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mActiveDownloads:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-eq v3, v4, :cond_7

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mActiveDownloads:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_1

    :cond_9
    move v3, v4

    :goto_1
    iget v6, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->type:I

    if-eqz v6, :cond_f

    if-eq v6, v5, :cond_e

    if-eq v6, v4, :cond_d

    const/4 v4, 0x3

    if-eq v6, v4, :cond_c

    const/4 v4, 0x5

    if-eq v6, v4, :cond_b

    const/4 v4, 0x6

    if-eq v6, v4, :cond_a

    goto/16 :goto_2

    :cond_a
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isResumable()Z

    move-result v9

    iget-boolean v11, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->isAutoResumable:Z

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result v12

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getLastInterruptReason()I

    move-result v13

    const/4 v14, 0x0

    move v10, v3

    invoke-virtual/range {v6 .. v14}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadPaused(Ljava/lang/String;Ljava/lang/String;ZIZIILcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    goto/16 :goto_2

    :cond_b
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move v10, v3

    invoke-virtual/range {v6 .. v14}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadPaused(Ljava/lang/String;Ljava/lang/String;ZIZIILcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    goto/16 :goto_2

    :cond_c
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadCanceled(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadFailed(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_e
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result v13

    iget-wide v14, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->systemDownloadId:J

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOfflinePage()Z

    move-result v16

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->isSupportedMimeType:Z

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v6 .. v18}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZI)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->onSuccessNotificationShown(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;I)V

    goto :goto_2

    :cond_f
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result v13

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTimeRemainingInMillis()J

    move-result-wide v14

    iget-wide v4, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->startTime:J

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->canDownloadWhileMetered:Z

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOfflinePage()Z

    move-result v20

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result v21

    move-wide/from16 v16, v4

    move/from16 v18, v3

    move/from16 v19, v1

    invoke-virtual/range {v6 .. v21}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->notifyDownloadProgress(Ljava/lang/String;Ljava/lang/String;JJIJJIZZI)V

    :goto_2
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mBoundService:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    if-eqz v1, :cond_10

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    :cond_10
    if-eqz p2, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->unbindServiceIfNeeded()V

    :cond_11
    return-void
.end method


# virtual methods
.method public handlePendingNotifications()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mPendingNotifications:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public notifyDownloadCanceled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    return-void
.end method

.method public notifyDownloadFailed(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    return-void
.end method

.method public notifyDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iput-boolean p2, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->isAutoResumable:Z

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    return-void
.end method

.method public notifyDownloadPaused(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    return-void
.end method

.method public notifyDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iput-wide p2, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->startTime:J

    iput-boolean p4, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->canDownloadWhileMetered:Z

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    return-void
.end method

.method public notifyDownloadSuccessful(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZZ)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iput-boolean p4, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->canResolve:Z

    iput-wide p2, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->systemDownloadId:J

    iput-boolean p5, v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->isSupportedMimeType:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    return-void
.end method

.method public onDownloadCanceled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mActiveDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mActiveDownloads:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->unbindServiceIfNeeded()V

    :cond_0
    return-void
.end method

.method public onSuccessNotificationShown(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;I)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;-><init>(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumePendingDownloads()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->isTrackingResumableDownload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;-><init>(ILcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->updateDownloadNotification(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;Z)V

    :cond_0
    return-void
.end method

.method public unbindService()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mApplicationContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
