.class public Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static destroyPopupIfExist()V
    .locals 0

    return-void
.end method

.method public static getAppNameForDownloading(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static notifyDownloadApkCancelled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static notifyDownloadApkCompleted(Landroid/content/Context;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static notifyDownloadApkRequested(Landroid/content/Context;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static shouldBlockIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static startInterceptApkDownload(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;)V
    .locals 0

    return-void
.end method

.method public static updateDLInterceptTable(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    return-void
.end method
