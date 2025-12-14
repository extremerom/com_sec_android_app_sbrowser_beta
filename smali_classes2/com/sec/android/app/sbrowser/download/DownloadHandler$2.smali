.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->chooseActivity(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackId:J

.field final synthetic val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;


# direct methods
.method public constructor <init>(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$2;->val$callbackId:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$2;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$2;->val$callbackId:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$2;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->ignoreDownload(JLcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method
