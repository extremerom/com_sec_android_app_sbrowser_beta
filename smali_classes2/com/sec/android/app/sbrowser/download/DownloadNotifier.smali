.class public interface abstract Lcom/sec/android/app/sbrowser/download/DownloadNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract notifyDownloadCanceled(Ljava/lang/String;)V
.end method

.method public abstract notifyDownloadFailed(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end method

.method public abstract notifyDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V
.end method

.method public abstract notifyDownloadPaused(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end method

.method public abstract notifyDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZ)V
.end method

.method public abstract notifyDownloadSuccessful(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZZ)V
.end method

.method public abstract resumePendingDownloads()V
.end method
