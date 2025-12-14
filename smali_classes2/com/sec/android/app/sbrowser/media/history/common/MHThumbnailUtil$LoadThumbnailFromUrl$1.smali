.class Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->a(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MediaHistory] Fail to update thumbnail."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;->b(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$LoadThumbnailFromUrl;)V

    return-void
.end method
