.class Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloader$ApkDownloaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->createAndExecuteApkDownloader(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

.field final synthetic val$params:Landroid/app/job/JobParameters;

.field final synthetic val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadApkFailure()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v0

    const-string v1, "ApkDCService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDownloadApkFail - DownloadUrl: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "onDownloadApkFail"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->b(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onDownloadApkProgressUpdate(JJI)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->d(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;JJI)V

    return-void
.end method

.method public onDownloadApkSuccess(J)V
    .locals 0

    const-string p1, "ApkDCService"

    const-string p2, "onDownloadApkSuccess"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->e(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method

.method public onDownloadCancelled()V
    .locals 3

    const-string v0, "ApkDCService"

    const-string v1, "onDownloadCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->a(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onDownloadInterrupted()V
    .locals 3

    const-string v0, "ApkDCService"

    const-string v1, "onDownloadInterrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->c(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
