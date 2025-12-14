.class public interface abstract Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onDownloadApkCancelled(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onDownloadApkFailure(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onDownloadApkInterrupted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onDownloadApkProgressUpdate(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onDownloadApkStarted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onDownloadApkSuccess(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onInstallApkFailure(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onInstallApkStarted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method

.method public abstract onInstallApkSuccess(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end method
