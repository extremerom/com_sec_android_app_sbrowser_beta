.class public interface abstract Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApkDownloaderCallback"
.end annotation


# virtual methods
.method public abstract onDownloadApkFailure()V
.end method

.method public abstract onDownloadApkProgressUpdate(JJI)V
.end method

.method public abstract onDownloadApkSuccess(J)V
.end method

.method public abstract onDownloadCancelled()V
.end method

.method public abstract onDownloadInterrupted()V
.end method
