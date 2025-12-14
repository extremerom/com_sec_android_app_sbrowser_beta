.class Lcom/sec/android/app/sbrowser/download/DownloadManagerService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleDownloadResumption(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

.field final synthetic val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$2;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$2;->val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$2;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$2;->val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->resumeDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V

    return-void
.end method
