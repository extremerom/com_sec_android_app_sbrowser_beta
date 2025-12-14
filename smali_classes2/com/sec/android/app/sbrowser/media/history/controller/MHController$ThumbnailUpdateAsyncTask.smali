.class Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/controller/MHController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailUpdateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "ThumbnailUpdateAsyncTask::doInBackground"

    const-string v0, "TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->a(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->getHistoryList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "Cancelled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->prepareThumbnailBitmapFromByteArray()V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "TAG"

    const-string v0, "ThumbnailUpdateAsyncTask::onPostExecute"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/controller/MHController$ThumbnailUpdateAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->c(Lcom/sec/android/app/sbrowser/media/history/controller/MHController;)V

    return-void
.end method
