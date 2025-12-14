.class public Lcom/sec/terrace/browser/download/TinDownloadManagerService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;,
        Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;
    }
.end annotation


# instance fields
.field private mNativeDownloadManagerService:J

.field private mTinDownloadObserver:Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDownloadItemToList(Ljava/util/List;Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createDownloadItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private getNativeDownloadManagerService()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mNativeDownloadManagerService:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/BrowserStartupController;->isFullBrowserStarted()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->init(Lcom/sec/terrace/browser/download/TinDownloadManagerService;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mNativeDownloadManagerService:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mNativeDownloadManagerService:J

    return-wide v0
.end method

.method private onAllDownloadsRetrieved(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mTinDownloadObserver:Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;->onAllDownloadsRetrieved(Ljava/util/List;Z)V

    return-void
.end method

.method private static onDownloadItemCanceled(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method private onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mTinDownloadObserver:Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;->onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    return-void
.end method

.method private onDownloadItemRemoved(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mTinDownloadObserver:Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;->onDownloadItemRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method private onDownloadItemUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mTinDownloadObserver:Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;->onDownloadItemUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->cancelDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V

    return-void
.end method

.method public checkForExternallyRemovedDownloads(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->checkForExternallyRemovedDownloads(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Z)V

    return-void
.end method

.method public getAllDownloads(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->getAllDownloads(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Z)V

    return-void
.end method

.method public onResumptionFailed(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mTinDownloadObserver:Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;->onResumptionFailed(Ljava/lang/String;)V

    return-void
.end method

.method public pauseDownload(Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->pauseDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeDownload(Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->removeDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V

    return-void
.end method

.method public renameDownload(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->renameDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;Z)V

    return-void
.end method

.method public resumeDownload(Ljava/lang/String;ZZ)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->resumeDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setObserver(Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->mTinDownloadObserver:Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;

    return-void
.end method

.method public updateLastAccessTime(Ljava/lang/String;Z)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->updateLastAccessTime(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMimetypeAndTargetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/download/TinDownloadManagerServiceJni;->get()Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getNativeDownloadManagerService()J

    move-result-wide v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v1 .. v9}, Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;->updateMimetypeAndTargetPath(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
