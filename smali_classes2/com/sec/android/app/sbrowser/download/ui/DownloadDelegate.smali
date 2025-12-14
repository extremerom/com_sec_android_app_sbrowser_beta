.class public interface abstract Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addDownloadHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
.end method

.method public abstract broadcastDownloadAction(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Ljava/lang/String;)V
.end method

.method public abstract broadcastSaveAllOperationAction(Ljava/lang/String;)V
.end method

.method public abstract getAllDownloads(Z)V
.end method

.method public abstract getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;
.end method

.method public abstract initSearchClient()V
.end method

.method public abstract isSearchClientInitialized()Z
.end method

.method public abstract removeDownload(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract removeDownloadHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
.end method

.method public abstract showRetryDialog(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/content/Context;)V
.end method
