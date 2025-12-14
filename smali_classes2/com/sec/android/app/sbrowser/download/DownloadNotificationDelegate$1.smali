.class Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->updateDownloadSuccessNotification(Lcom/sec/android/app/sbrowser/download/DownloadProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

.field final synthetic val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;Lcom/sec/android/app/sbrowser/download/DownloadProgress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding completed download to ADM DB id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadNotificationDelegate"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mDownloadManagerDelegate:Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->addCompletedDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;->val$progress:Lcom/sec/android/app/sbrowser/download/DownloadProgress;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsSupportedMimeType:Z

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->canResolveDownloadItem(Landroid/content/Context;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate$1;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V

    invoke-static {v2}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
