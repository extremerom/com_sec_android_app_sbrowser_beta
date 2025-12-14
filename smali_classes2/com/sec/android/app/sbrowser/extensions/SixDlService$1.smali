.class Lcom/sec/android/app/sbrowser/extensions/SixDlService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadApkCancelled(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    const-string p0, "SixDlService"

    const-string p1, "onDownloadApkCancelled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadApkFailure(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 2

    const-string v0, "SixDlService"

    const-string v1, "onDownloadApkFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->b(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadApkInterrupted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    const-string p0, "SixDlService"

    const-string p1, "onDownloadApkInterrupted"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadApkProgressUpdate(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    const-string p0, "SixDlService"

    const-string p1, "onDownloadApkProgressUpdate"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadApkStarted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    const-string p0, "SixDlService"

    const-string p1, "onDownloadApkStarted"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDownloadApkSuccess(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    const-string p0, "SixDlService"

    const-string p1, "onDownloadApkSuccess"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInstallApkFailure(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 2

    const-string v0, "SixDlService"

    const-string v1, "onInstallApkFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->b(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;)V

    return-void
.end method

.method public onInstallApkStarted(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    const-string p0, "SixDlService"

    const-string p1, "onInstallApkStarted"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInstallApkSuccess(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0

    const-string p0, "SixDlService"

    const-string p1, "onInstallApkSuccess"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
