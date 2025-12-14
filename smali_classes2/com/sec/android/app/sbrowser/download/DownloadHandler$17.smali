.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "2537"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DownloadHandler"

    const-string p2, "PrivacyMode : Download button"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->b(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->b(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didShowPrivacyDownloadDialog()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->f(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$17;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->startDownloadRequest(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
