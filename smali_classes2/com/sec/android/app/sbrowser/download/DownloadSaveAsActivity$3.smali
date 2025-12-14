.class Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->createReceiver()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$3;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "broadcast_activity_parent"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$3;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getParentTask()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$3;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
