.class public Lcom/sec/android/app/sbrowser/download/DownloadManagerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;
.implements Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifierAutoDetect$Observer;
.implements Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;
.implements Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;
.implements Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;


# static fields
.field private static sDownloadManagerService:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

.field private static sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;


# instance fields
.field protected final mAutoResumableDownloadIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected mDeleteOldDb:Z

.field private mDownloadImageProgressListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

.field private mDownloadNotificationDelegate:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

.field private final mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

.field private final mDownloadProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

.field private mHistoryAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUIUpdateScheduled:Z

.field private mPausedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSaveAllDownloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreDownloadQueueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

.field private final mUpdateDelayInMillis:J

.field private mValidCallbackIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/DownloadNotifier;Landroid/os/Handler;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NotEnoughStorage"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showStorageFullDialog(Landroid/content/Context;)Lm/l;

    :cond_0
    :goto_0
    new-instance p1, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-direct {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;-><init>()V

    sput-object p1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->setObserver(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadDelegateImpl;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/DownloadDelegateImpl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->setDownloadDelegate(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mUpdateDelayInMillis:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    new-instance p3, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p3, p2, p1, p4}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadNotifier;Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadNotificationDelegate:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->lambda$requestDownload$5(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->lambda$removeDownload$3(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->lambda$renameDownload$4(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;I)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->lambda$removeDownload$2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->lambda$onSaveAllOperationProgress$6(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->lambda$onDownloadInterrupted$0(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->lambda$onPreDownloadRequest$1(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V

    return-void
.end method

.method public static declared-synchronized getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;
    .locals 8

    const-class v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sDownloadManagerService:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const-wide/16 v6, 0x3e8

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/DownloadNotifier;Landroid/os/Handler;J)V

    sput-object v1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sDownloadManagerService:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sDownloadManagerService:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)Lcom/sec/android/app/sbrowser/download/DownloadNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    return-object p0
.end method

.method public static hasDownloadManagerService()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sDownloadManagerService:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mIsUIUpdateScheduled:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    return-void
.end method

.method private synthetic lambda$onDownloadInterrupted$0(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->addAutoResumableDownload(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onPreDownloadRequest$1(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->processPreDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V

    return-void
.end method

.method private synthetic lambda$onSaveAllOperationProgress$6(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->addCompletedSaveAllImageDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method private static synthetic lambda$removeDownload$2(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->removeDownload(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$removeDownload$3(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->delete(Ljava/lang/String;)Z

    goto :goto_1

    :cond_0
    const-string v0, "DownloadService"

    const-string v1, "removeDownload::doInBackground start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->removeCompletedDownload(Ljava/lang/String;Ljava/io/File;)V

    const-string p0, "removeDownload::doInBackground end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$renameDownload$4(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;->onResult(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$requestDownload$5(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    if-nez p0, :cond_0

    invoke-static/range {p1 .. p7}, Lcom/sec/terrace/browser/download/TerraceDownloadController;->requestDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sec/terrace/browser/download/TerraceDownloadController;->requestDownload(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :goto_0
    return-void
.end method

.method private removeDownloadProgress(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->removeAutoResumableDownload(Ljava/lang/String;Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private scheduleDownloadResumption(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->removeAutoResumableDownload(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$2;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    iget-wide p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mUpdateDelayInMillis:J

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleUpdateIfNeeded()V
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mIsUIUpdateScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mIsUIUpdateScheduled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iget-boolean v6, v5, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsUpdated:Z

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mIsUIUpdateScheduled:Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadNotificationDelegate:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->updateAllNotifications(Ljava/util/List;)V

    move v1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iput-boolean v3, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsUpdated:Z

    iget v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    const/4 v5, 0x4

    if-nez v4, :cond_4

    iget-object v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    if-ne v4, v5, :cond_5

    iget-boolean v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsAutoResumable:Z

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v6}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    if-ne v4, v5, :cond_8

    iget-object v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isResumable()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsAutoResumable:Z

    if-nez v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    iget-object v5, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$3;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mUpdateDelayInMillis:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadItem;I)V
    .locals 11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    const/4 v4, 0x6

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result v8

    move-object v5, v3

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/download/DownloadProgress;-><init>(JZLcom/sec/terrace/browser/download/TerraceDownloadItem;I)V

    iput-boolean v0, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsUpdated:Z

    iput-boolean v1, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsSupportedMimeType:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->getAppNameForDownloading(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateDownloadProgress: appName:"

    const-string v1, "DownloadService"

    invoke-static {p2, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p2, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->fromDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFeatureId(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    iget-object p2, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p2, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iput-boolean v0, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsInterceptDownload:Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    iput p2, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsInterceptDownload:Z

    if-eqz p2, :cond_4

    iget-object p2, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->fromDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFeatureId(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    :cond_4
    iput-object p1, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iput-boolean v0, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsUpdated:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsAutoResumable:Z

    iput-boolean v1, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsSupportedMimeType:Z

    return-void
.end method


# virtual methods
.method public addCompletedDownloadToADM(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->addCompletedDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Z

    move-result p0

    return p0
.end method

.method public addDownloadHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->addDownloadImageProgressListener(Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->addObserver(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;)V

    return-void
.end method

.method public declared-synchronized addDownloadImageProgressListener(Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public broadcastDownloadAction(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->buildActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public broadcastSaveAllOperationAction(Ljava/lang/String;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sec/android/app/sbrowser/download/DownloadBroadcastReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL_SAVE_ALL_IMAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public cancelAllCompletedNotifications()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isComplete:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadCanceled(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cancelDownload(Ljava/lang/String;ZZ)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    sget-object p3, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p3, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->cancelDownload(Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->removeDownloadProgress(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->notifyDownloadApkCancelled(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public checkAlreadyExistingSaveAllDownloadedItem(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPendingSaveAllDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->cancelDownload(Ljava/lang/String;ZZ)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkForExternallyRemovedDownloads(Z)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->checkForExternallyRemovedDownloads(Z)V

    return-void
.end method

.method public destroyServiceDelegate()V
    .locals 0

    return-void
.end method

.method public getAllDownloads(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->getAllDownloads(Z)V

    :cond_0
    return-void
.end method

.method public getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    return-object p0
.end method

.method public ignoreDownload(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrlChain()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->closeBlankTab(Landroid/app/Activity;[Ljava/lang/String;)V

    const-string p0, ""

    const/4 p3, 0x0

    invoke-static {p0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadController;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public init()V
    .locals 4

    invoke-static {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadController;->setDownloadNotificationService(Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mValidCallbackIds:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPreDownloadQueueMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPausedDownloads:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPendingSaveAllDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->initPendingSaveAllDownloadMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->deleteOldDBIfRequired(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->deleteTemporaryFilesIfRequired()V

    return-void
.end method

.method public initPendingSaveAllDownloadMap()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save_all_download"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/download/DownloadConstants;->SAVE_ALL_DELIMITER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPendingSaveAllDownloadMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initSearchClient()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->refresh()V

    return-void
.end method

.method public isSearchClientInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidCallbackID(J)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mValidCallbackIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public moveUpdateNewPath(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->updateMimetypeAndTargetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onActivityLaunched()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->clearResumptionAttemptLeft()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->checkForExternallyRemovedDownloads(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->checkForExternallyRemovedDownloads(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getAllDownloads(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getAllDownloads(Z)V

    return-void
.end method

.method public onAllDownloadsRetrieved(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDeleteOldDb:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDeleteOldDb:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->removeDownload(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPendingSaveAllDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->checkAlreadyExistingSaveAllDownloadedItem(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DownloadItemList;->setTerraceDownloadItemList(Ljava/util/List;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->onAllDownloadsRetrieved(Ljava/util/List;Z)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onConnectionTypeChanged(I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mCanDownloadWhileMetered:Z

    :cond_2
    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mCanDownloadWhileMetered:Z

    if-nez v4, :cond_3

    if-nez p1, :cond_4

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$5;

    invoke-direct {v5, p0, v3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$5;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/android/app/sbrowser/download/DownloadProgress;)V

    iget-wide v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mUpdateDelayInMillis:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->stopListenToConnectionChangeIfNotNeeded(Ljava/util/List;)V

    return-void
.end method

.method public onDownloadCancelled(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->updateDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadItem;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->clearDownloadResumeCount(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->notifyDownloadApkCancelled(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadCompleted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download completed id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->provideDownloadInfoToMyFiles(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getShouldBlockNotify()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSaveAllOperationProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "application/unknown"

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getBytesReceived()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v11

    cmp-long v5, v11, v7

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->isOmaMimeType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "application/x-wifi-config"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v10

    goto :goto_1

    :cond_3
    move v2, v6

    :goto_1
    invoke-static {v4, v5, v7, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadUtils;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move v5, v10

    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->fromDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getLastFocusedActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->isOmaMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v4, "application/vnd.oma.dd+xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v5, 0x3

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->getInstance()Lcom/sec/android/app/sbrowser/download/OmaDownloadController;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v11}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getFilePathForUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->fromDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v7

    goto :goto_3

    :cond_5
    const-string v4, "FPath is empty, DRM download might fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    invoke-virtual {v2, v8, v7}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->process(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v11, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->updateMimetypeAndTargetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_7
    move-object v7, v2

    goto :goto_4

    :cond_8
    move v5, v9

    :cond_9
    :goto_4
    move-object v12, v7

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v11, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->updateMimetypeAndTargetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    :goto_5
    new-instance v2, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v2, v12}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-direct {v0, v2, v5}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->updateDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadItem;I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->clearDownloadResumeCount(Ljava/lang/String;)V

    if-ne v5, v9, :cond_b

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    const-wide/16 v14, -0x1

    const/16 v16, -0x1

    const/4 v13, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->showDownloadCompletePopup(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;ZJI)V

    :cond_b
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchConstants;->isDirectSearchSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?fsname="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#statData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->getsInstance()Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->reportDownload(Ljava/lang/String;)V

    :cond_c
    if-ne v5, v10, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isPathSecretDownloadPath(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->smartSearchInsert(Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v2, v10, v6}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    goto :goto_6

    :cond_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    if-eqz v0, :cond_e

    if-ne v5, v10, :cond_e

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->updateDLInterceptTable(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    :cond_e
    return-void
.end method

.method public onDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interrupt Reason = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getLastInterruptReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getLastInterruptReason()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->removeDownload(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isResumable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    const/4 v7, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->showDownloadCompletePopup(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;ZJI)V

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, LGa/d;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0, v0}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->updateDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadItem;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getLastInterruptReason()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getFilePathForUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f140483

    goto :goto_1

    :cond_4
    const p1, 0x7f140485

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showSnackBar(I)V

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    if-eqz v1, :cond_a

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getAutoResumeCountSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->pauseDownload(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->updateDownloadResumeCount(Ljava/lang/String;I)V

    return-void

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->updateDownloadResumeCount(Ljava/lang/String;I)V

    iget-boolean p1, v1, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mCanDownloadWhileMetered:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleDownloadResumption(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadItemRemoved(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->onDownloadItemRemoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadItemUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$4;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadStarted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getLastFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrlChain()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->closeBlankTab(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->isOmaMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8808"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-static {v1, v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2537"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download started filename = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " totalBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StatusUtil;->isSavedPageRunning()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f140fcf

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showSnackBar(I)V

    :cond_2
    return-void
.end method

.method public onDownloadUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mAutoResumableDownloadIds:Ljava/util/List;

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->removeAutoResumableDownload(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->updateDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadItem;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V

    return-void
.end method

.method public onOperationWaitToRetry()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationWaitToRetry()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreDownloadRequest(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)V
    .locals 9

    const-string v0, "onPreDownloadRequest : "

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getDownloadBlockedByKnox()Z

    move-result v1

    const-string v2, "DownloadService"

    if-eqz v1, :cond_0

    const-string v0, "onPreDownloadRequest Blocked by Knox"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->ignoreDownload(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isPathSecretDownloadPath(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getLastFocusedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->fromDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDefaultDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    :cond_1
    move-object v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "fileSize = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " path = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mimeType = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Base64 encoding fail "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPreDownloadRequest : f="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getLastFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->exitFullscreen()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result v0

    const/4 v6, 0x6

    if-ne v0, v6, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->notifyDownloadApkRequested(Landroid/content/Context;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreDownloadRequest : appName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v4}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->getUniqueFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p2, p3, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadController;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_3
    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6, v7, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->checkDownloadSpaceAvailable(Landroid/content/Context;JLjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "No storage space available"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->stopProcessForRetry()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showNoStorageSnackbar()V

    return-void

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object p1

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->updateGuid(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v4}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->getUniqueFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p2, p3, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadController;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_5
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->pauseDownload(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->updateDownloadResumeCount(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    if-eqz p1, :cond_9

    invoke-virtual {v0, p1, v5}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->shouldIgnoreDownload(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p2, p3, v5}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->ignoreDownload(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->openContent(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void

    :cond_7
    invoke-virtual {v0, p1, v5, p2, p3}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->shouldShowChooser(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/d;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/download/d;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->requestNotificationPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void

    :cond_9
    :goto_1
    invoke-virtual {p0, p2, p3, v5}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->ignoreDownload(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method public onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JJZLandroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPreDownloadQueueMap:Ljava/util/Map;

    invoke-virtual {p8}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p7, :cond_2

    const/4 v4, 0x1

    invoke-static {v2, p5, p6, p1, v4}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->checkDownloadSpaceAvailable(Landroid/content/Context;JLjava/lang/String;Z)Z

    move-result p5

    if-nez p5, :cond_2

    move p7, v3

    :cond_2
    if-nez p7, :cond_4

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->closeBlankTab(Landroid/app/Activity;)V

    :cond_4
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p5, p2, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->getUniqueFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mValidCallbackIds:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    sget-object p6, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->isOffTheRecord()Z

    move-result p5

    invoke-virtual {p6, v0, p5, v3}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->resumeDownload(Ljava/lang/String;ZZ)V

    invoke-static {p1, p2, p3, p4, p7}, Lcom/sec/terrace/browser/download/TerraceDownloadController;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_5
    if-eqz p8, :cond_7

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mValidCallbackIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->processDownloadRequest(Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;Ljava/util/HashMap;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onResumptionFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    new-instance v1, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadFailed(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->removeDownloadProgress(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->notifyDownloadApkCancelled(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSaveAllOperationCancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationCancel()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onSaveAllOperationClear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationClear()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onSaveAllOperationPause()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveAllOperationProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mSearchClient:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->smartSearchInsert(Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->getSaveAllWorkerThread()Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;

    move-result-object v0

    new-instance v1, LGa/d;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p0, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/SaveAllDownloadWorkerThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->maintainPendingSaveAllDownloadsMap(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;Z)V

    :cond_1
    return-void
.end method

.method public onSaveAllOperationResume()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveAllOperationRetry()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationRetry()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveAllOperationStart(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationStart()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7f140fcf

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showSnackBar(I)V

    :cond_3
    return-void
.end method

.method public onSaveAllTaskCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onOperationCompleted()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onSuccessNotificationShown(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;ZIJ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->shouldOpenAfterDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {p2, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-virtual {p2, p4, p5}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setSystemDownloadId(J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->handleAutoOpenAfterDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    :cond_0
    return-void
.end method

.method public onTaskRemoved()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;->onTaskRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pauseDownload(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->pauseDownload(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    if-eqz p1, :cond_1

    iget p2, p1, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->fromDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsPaused(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onDownloadUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8812"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processPreDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;J)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;-><init>(Landroid/app/Activity;JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPreDownloadQueueMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mPreDownloadQueueMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mValidCallbackIds:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->processDownloadRequest(Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public removeDownload(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadCanceled(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/sec/android/app/sbrowser/autofill/password/m;

    const/4 v2, 0x1

    move-object v1, v7

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/autofill/password/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->removeDownloadProgress(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->notifyDownloadApkCancelled(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeDownloadHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHistoryAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->removeDownloadImageProgressListener(Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->removeObserver(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;)V

    return-void
.end method

.method public declared-synchronized removeDownloadImageProgressListener(Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadImageProgressListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public renameDownload(Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;ZLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/google/firebase/messaging/z;

    const/16 v0, 0x13

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p2, p1, p4, p0, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->renameDownload(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;Z)V

    return-void
.end method

.method public requestDownload(Lcom/sec/android/app/sbrowser/download/DownloadParams;)V
    .locals 10

    const-string v0, "disable-downloads"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showNoNetworkSnackbar()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getRefererUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getHeaders()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getShouldBlockNotify()Z

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getFeatureId()I

    move-result v8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadParams;->getIsOffTheRecord()Z

    move-result v9

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getLastFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/e;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/download/e;-><init>(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->checkPermission(Ljava/lang/Runnable;Landroid/app/Activity;)V

    return-void
.end method

.method public resumeDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->updateDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadItem;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mDownloadProgressMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mCanDownloadWhileMetered:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->isActiveNetworkMetered(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mCanDownloadWhileMetered:Z

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->resumeDownload(Ljava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8813"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public retryDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v1, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->broadcastDownloadAction(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->resumeDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadController;->isOmaMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "8809"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendBroadcastIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getParentTask()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MPACTIVITY_STOP_ACTION"

    invoke-static {p0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "broadcast_activity_parent"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public showDownloadPermissionAlert(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object p0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showPermissionAlert(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method public showNoNetworkSnackbar()V
    .locals 1

    const v0, 0x7f140803

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showSnackBar(I)V

    return-void
.end method

.method public showNoStorageSnackbar()V
    .locals 1

    const v0, 0x7f140483

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showSnackBar(I)V

    return-void
.end method

.method public showRetryDialog(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {v0, p2, p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->createRetryConfirmDialog(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8799"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showSnackBar(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->mHelper:Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->getLastFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerServiceHelper;->showSnackBar(Landroid/app/Activity;I)V

    return-void
.end method

.method public updateLastAccessTime(Ljava/lang/String;Z)V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sTerraceDownloadManagerService:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->updateLastAccessTime(Ljava/lang/String;Z)V

    return-void
.end method
