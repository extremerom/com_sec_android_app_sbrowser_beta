.class Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;

.field final synthetic val$canResolve:Z

.field final synthetic val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->this$1:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->val$canResolve:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Showing download complete notification id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadNotificationDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getSystemDownloadId()J

    move-result-wide v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->val$item:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->getSuccessNotificationId(Ljava/lang/String;)I

    move-result v9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->this$1:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->val$canResolve:Z

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iget-boolean v6, v1, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsSupportedMimeType:Z

    move-object v1, v2

    move-object v2, v0

    move-wide v3, v7

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadSuccessful(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JZZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->this$1:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    invoke-virtual {v1, v0, v9}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->broadcastDownloadSuccessful(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "application/x-wifi-config"

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->this$1:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    const/4 v3, 0x1

    move-object v2, v0

    move-wide v4, v7

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->showDownloadCompletePopup(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;ZJI)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;->this$1:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadNotifier:Lcom/sec/android/app/sbrowser/download/DownloadNotifier;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotifier;->notifyDownloadFailed(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
