.class interface abstract Lcom/sec/terrace/browser/download/TinDownloadManagerService$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/download/TinDownloadManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract cancelDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
.end method

.method public abstract checkForExternallyRemovedDownloads(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Z)V
.end method

.method public abstract getAllDownloads(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Z)V
.end method

.method public abstract init(Lcom/sec/terrace/browser/download/TinDownloadManagerService;Z)J
.end method

.method public abstract pauseDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
.end method

.method public abstract removeDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
.end method

.method public abstract renameDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/base/Callback;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sec/terrace/browser/download/TinDownloadManagerService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract resumeDownload(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;ZZ)V
.end method

.method public abstract updateLastAccessTime(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Z)V
.end method

.method public abstract updateMimetypeAndTargetPath(JLcom/sec/terrace/browser/download/TinDownloadManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method
