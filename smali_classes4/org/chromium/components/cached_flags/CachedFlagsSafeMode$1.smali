.class Lorg/chromium/components/cached_flags/CachedFlagsSafeMode$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode$1;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode$1;->this$0:Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;

    invoke-static {v0}, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->b(Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Flags"

    const-string v2, "Exception writing safe values."

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/base/task/AsyncTask;->cancel(Z)Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode$1;->this$0:Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;

    invoke-static {p0}, Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;->a(Lorg/chromium/components/cached_flags/CachedFlagsSafeMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 p1, 0x5

    const-string v0, "Variations.SafeModeCachedFlags.Cached"

    invoke-static {v0, p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method
