.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->showSecretDownloadZipFileWarningPopup(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->startDownloadRequest(Landroid/app/Activity;)V

    return-void
.end method
