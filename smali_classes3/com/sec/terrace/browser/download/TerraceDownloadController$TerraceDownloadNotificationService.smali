.class public interface abstract Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerraceDownloadNotificationService"
.end annotation


# virtual methods
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

.method public abstract showDownloadPermissionAlert(Landroid/app/Activity;)V
.end method
