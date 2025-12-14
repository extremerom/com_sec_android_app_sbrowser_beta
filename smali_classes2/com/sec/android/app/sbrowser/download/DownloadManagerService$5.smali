.class Lcom/sec/android/app/sbrowser/download/DownloadManagerService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onConnectionTypeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

.field final synthetic val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/android/app/sbrowser/download/DownloadProgress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$5;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$5;->val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "DownloadService"

    const-string v1, "network connectivity changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$5;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$5;->val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->resumeDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V

    return-void
.end method
