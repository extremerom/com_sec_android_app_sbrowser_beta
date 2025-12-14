.class Lorg/chromium/components/signin/ConnectionRetry$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/ConnectionRetry;->attempt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/ConnectionRetry;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/ConnectionRetry;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {v0}, Lorg/chromium/components/signin/ConnectionRetry;->a(Lorg/chromium/components/signin/ConnectionRetry;)Lorg/chromium/components/signin/ConnectionRetry$AuthTask;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/components/signin/ConnectionRetry$AuthTask;->run()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lorg/chromium/components/signin/AuthException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to perform auth task: %s"

    invoke-virtual {v0}, Lorg/chromium/components/signin/AuthException;->stringifyCausalChain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuthTaskRetry"

    invoke-static {v3, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {p0}, Lorg/chromium/components/signin/ConnectionRetry;->b(Lorg/chromium/components/signin/ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {v0}, Lorg/chromium/components/signin/AuthException;->isTransientError()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {p0}, Lorg/chromium/components/signin/ConnectionRetry;->a(Lorg/chromium/components/signin/ConnectionRetry;)Lorg/chromium/components/signin/ConnectionRetry$AuthTask;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/components/signin/ConnectionRetry$AuthTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {p1}, Lorg/chromium/components/signin/ConnectionRetry;->b(Lorg/chromium/components/signin/ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {p1}, Lorg/chromium/components/signin/ConnectionRetry;->c(Lorg/chromium/components/signin/ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {p1}, Lorg/chromium/components/signin/ConnectionRetry;->a(Lorg/chromium/components/signin/ConnectionRetry;)Lorg/chromium/components/signin/ConnectionRetry$AuthTask;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/signin/ConnectionRetry$1;->this$0:Lorg/chromium/components/signin/ConnectionRetry;

    invoke-static {p0}, Lorg/chromium/components/signin/ConnectionRetry;->b(Lorg/chromium/components/signin/ConnectionRetry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-interface {p1, p0}, Lorg/chromium/components/signin/ConnectionRetry$AuthTask;->onFailure(Z)V

    :goto_1
    return-void
.end method
