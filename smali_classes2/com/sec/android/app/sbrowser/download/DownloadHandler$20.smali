.class Lcom/sec/android/app/sbrowser/download/DownloadHandler$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadHandler;->createRetryConfirmDialog(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$20;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadHandler$20;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8801"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
