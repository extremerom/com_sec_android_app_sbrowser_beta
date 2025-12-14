.class interface abstract Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDownloadApkFailure()V
.end method

.method public abstract onDownloadApkProgressUpdate(I)V
.end method

.method public abstract onDownloadApkSuccess(Ljava/io/File;)V
.end method

.method public abstract onDownloadCanceled()V
.end method

.method public abstract onDownloadInterrupted()V
.end method

.method public abstract onDownloadStarted()V
.end method
