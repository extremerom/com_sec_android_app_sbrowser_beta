.class Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;->setObserver(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

.field final synthetic val$terraceDownloadObserver:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;->this$0:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService;

    iput-object p2, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;->val$terraceDownloadObserver:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDownloadsRetrieved(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;Z)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;->val$terraceDownloadObserver:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;->onAllDownloadsRetrieved(Ljava/util/List;Z)V

    return-void
.end method

.method public onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;->val$terraceDownloadObserver:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;->onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    return-void
.end method

.method public onDownloadItemRemoved(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;->val$terraceDownloadObserver:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;->onDownloadItemRemoved(Ljava/lang/String;Z)V

    return-void
.end method

.method public onDownloadItemUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;->val$terraceDownloadObserver:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;->onDownloadItemUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V

    return-void
.end method

.method public onResumptionFailed(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$1;->val$terraceDownloadObserver:Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$TerraceDownloadObserver;->onResumptionFailed(Ljava/lang/String;)V

    return-void
.end method
