.class interface abstract Lcom/sec/terrace/browser/download/TinDownloadManagerService$TinDownloadObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/download/TinDownloadManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TinDownloadObserver"
.end annotation


# virtual methods
.method public abstract onAllDownloadsRetrieved(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
.end method

.method public abstract onDownloadItemRemoved(Ljava/lang/String;Z)V
.end method

.method public abstract onDownloadItemUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
.end method

.method public abstract onResumptionFailed(Ljava/lang/String;)V
.end method
