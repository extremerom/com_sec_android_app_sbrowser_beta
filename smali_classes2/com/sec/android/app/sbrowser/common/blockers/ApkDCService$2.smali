.class Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->handleDownloadApkSuccess(Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;->val$params:Landroid/app/job/JobParameters;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;->val$params:Landroid/app/job/JobParameters;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService$2;->val$requestInfo:Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;->h(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCService;Landroid/app/job/JobParameters;Lcom/sec/android/app/sbrowser/common/stub/download/ApkDownloadRequestInfo;)V

    return-void
.end method
