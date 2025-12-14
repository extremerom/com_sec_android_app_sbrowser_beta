.class Lcom/sec/android/app/sbrowser/download/DownloadManagerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->h(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->resumePendingDownloads()V

    return-void
.end method
