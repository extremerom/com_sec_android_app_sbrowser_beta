.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showDangerousDownloadWarningPopup(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->startDownloadRequest(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$9;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8826"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
