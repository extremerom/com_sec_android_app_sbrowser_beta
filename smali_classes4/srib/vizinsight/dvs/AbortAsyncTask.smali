.class public Lsrib/vizinsight/dvs/AbortAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DVS_AbortAsyncTask"


# instance fields
.field private listener:Lsrib/vizinsight/dvs/AbortListener;

.field private segmenter:Lsrib/vizinsight/dvs/DVS;

.field private taskStatus:Z


# direct methods
.method public constructor <init>(Lsrib/vizinsight/dvs/DVS;Lsrib/vizinsight/dvs/AbortListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->segmenter:Lsrib/vizinsight/dvs/DVS;

    iput-object p2, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->listener:Lsrib/vizinsight/dvs/AbortListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->taskStatus:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsrib/vizinsight/dvs/AbortAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string p1, "doInBackground"

    const-string v0, "DVS_AbortAsyncTask"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->taskStatus:Z

    if-eqz p0, :cond_0

    :try_start_0
    sget-object p0, Lsrib/vizinsight/dvs/DVSegmenter;->cancellationFinished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "Done cancelling task."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsrib/vizinsight/dvs/AbortAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1

    const-string p1, "DVS_AbortAsyncTask"

    const-string v0, "onPostExecute"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-eqz p1, :cond_0

    invoke-static {}, Lsrib/vizinsight/dvs/DVSegmenter;->releaseSegmenter()V

    :cond_0
    iget-object p0, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->listener:Lsrib/vizinsight/dvs/AbortListener;

    invoke-interface {p0}, Lsrib/vizinsight/dvs/AbortListener;->onAbortCompleted()V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    const-string v0, "onPreExecute"

    const-string v1, "DVS_AbortAsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVS;->DVSTaskStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cancelling task."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->taskStatus:Z

    iget-object p0, p0, Lsrib/vizinsight/dvs/AbortAsyncTask;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-virtual {p0}, Lsrib/vizinsight/dvs/DVS;->DVSAbort()V

    :cond_0
    return-void
.end method
