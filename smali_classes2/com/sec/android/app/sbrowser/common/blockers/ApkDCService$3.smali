.class Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->requestInstallApk(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$params:Landroid/app/job/JobParameters;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    const-string p1, "ApkDCService"

    const-string v0, "PackageInstallCallback.onFailure"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$params:Landroid/app/job/JobParameters;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->f(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$params:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    const-string p1, "ApkDCService"

    const-string v0, "PackageInstallCallback.onSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$params:Landroid/app/job/JobParameters;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->g(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$3;->val$params:Landroid/app/job/JobParameters;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
