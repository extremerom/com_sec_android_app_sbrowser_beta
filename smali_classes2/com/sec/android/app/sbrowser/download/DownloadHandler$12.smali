.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->checkReadPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$downloadGuid:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$isOffTheRecord:Z

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$referrer:Ljava/lang/String;

.field final synthetic val$systemDownloadId:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$originalUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$referrer:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$mimeType:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$downloadGuid:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$isOffTheRecord:Z

    iput-wide p9, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$systemDownloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 11

    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p2, p1

    if-nez p1, :cond_0

    const-string p1, "DownloadHandler"

    const-string p2, "Read permission has been granted by user"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$originalUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$referrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$downloadGuid:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$isOffTheRecord:Z

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$systemDownloadId:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->openFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZZ)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$12;->val$activity:Landroid/app/Activity;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_request_permission_storage"

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
