.class public interface abstract Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/download/TinDownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TinDownloadNotificationService"
.end annotation


# virtual methods
.method public abstract hasFileAccess(Lorg/chromium/ui/base/WindowAndroid;)Z
.end method

.method public abstract onDownloadCancelled(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end method

.method public abstract onDownloadCompleted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end method

.method public abstract onDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V
.end method

.method public abstract onDownloadStarted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end method

.method public abstract onDownloadUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end method

.method public abstract onPreDownloadRequest(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)V
.end method

.method public abstract requestFileAccess(JLorg/chromium/ui/base/WindowAndroid;)V
.end method
