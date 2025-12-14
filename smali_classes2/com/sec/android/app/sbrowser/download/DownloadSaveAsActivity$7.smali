.class Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->checkAndStartDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$7;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$7;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "8806"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$7;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->m(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    return-void
.end method
