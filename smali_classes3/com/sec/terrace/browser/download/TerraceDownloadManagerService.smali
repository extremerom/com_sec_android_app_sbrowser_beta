.class public Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;,
        Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;,
        Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;
    }
.end annotation


# instance fields
.field private mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->cancelDownload(Ljava/lang/String;Z)V

    return-void
.end method

.method public checkForExternallyRemovedDownloads(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->checkForExternallyRemovedDownloads(Z)V

    return-void
.end method

.method public getAllDownloads(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->getAllDownloads(Z)V

    return-void
.end method

.method public pauseDownload(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->pauseDownload(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeDownload(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->removeDownload(Ljava/lang/String;Z)V

    return-void
.end method

.method public renameDownload(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    new-instance v1, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$3;

    invoke-direct {v1, p0, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$3;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->renameDownload(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;Z)V

    return-void
.end method

.method public resumeDownload(Ljava/lang/String;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->resumeDownload(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setDownloadDelegate(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$2;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadDelegate;)V

    invoke-static {v0}, Lorg/chromium/components/download/DownloadCollectionBridge;->setDownloadDelegate(Lorg/chromium/components/download/DownloadDelegate;)V

    return-void
.end method

.method public setObserver(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    new-instance v1, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->setObserver(Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;)V

    return-void
.end method

.method public updateLastAccessTime(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->updateLastAccessTime(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateMimetypeAndTargetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->mTinDownloadManagerService:Lcom/sec/terrace/browser/download/TinDownloadManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/browser/download/TinDownloadManagerService;->updateMimetypeAndTargetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
