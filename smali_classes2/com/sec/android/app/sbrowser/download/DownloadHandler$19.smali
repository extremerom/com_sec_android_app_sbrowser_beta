.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->createRetryConfirmDialog(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

.field final synthetic val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$19;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$19;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$19;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "8800"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$19;->val$downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->retryDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method
