.class Lcom/sec/android/app/sbrowser/download/DownloadManagerService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->scheduleUpdateIfNeeded()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$3;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$3;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->i(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadManagerService$3;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->j(Lcom/sec/android/app/sbrowser/download/DownloadManagerService;)V

    return-void
.end method
