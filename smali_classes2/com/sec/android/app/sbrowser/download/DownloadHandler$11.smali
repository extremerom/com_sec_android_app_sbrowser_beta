.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->checkDownloadPermission(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_request_permission_storage"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p2, p1

    if-nez p1, :cond_1

    const-string p1, "DownloadHandler"

    const-string p2, "User granted the storage permission for download"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->d(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getMimetype()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->d(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isApkFileDownload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->d(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->c(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->startInterceptApkDownload(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;Lcom/sec/android/app/sbrowser/download_intercept/ui/DownloadFileController$DownloadCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$11;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->startDownloadRequest(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
