.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->chooseActivity(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callbackId:J

.field final synthetic val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

.field final synthetic val$resolvedIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$callbackId:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$resolvedIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "DownloadHandler"

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$callbackId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->ignoreDownload(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$activity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$4;->val$resolvedIntent:Landroid/content/Intent;

    invoke-virtual {p2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception while handling intent"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "No Activity found to handling chooser intent"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
