.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$16;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$16;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$16;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->e(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V

    return-void
.end method
