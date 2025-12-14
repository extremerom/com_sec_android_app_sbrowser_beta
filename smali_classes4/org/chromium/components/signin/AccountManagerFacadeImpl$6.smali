.class Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/AccountManagerFacadeImpl;->onAccountsUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/util/List<",
        "Landroid/accounts/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->lambda$onPostExecute$0()V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->q(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->doInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/components/signin/AccountManagerDelegate;->getAccountsSynchronous()[Landroid/accounts/Account;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/chromium/components/signin/AccountManagerDelegateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "AccountManager"

    const-string v1, "Error fetching accounts from the delegate."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->m(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->m(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Z)V

    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->s(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/chromium/components/signin/c;

    invoke-direct {p1, p0}, Lorg/chromium/components/signin/c;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;)V

    const-wide/16 v0, 0x3e8

    const/4 p0, 0x7

    invoke-static {p0, p1, v0, v1}, Lorg/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->e(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->e(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->i(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->h(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Z

    move-result v0

    const-string v1, "Signin.GetAccountsBackoffSuccess"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->h(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->i(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)I

    move-result v0

    const/4 v1, 0x6

    const-string v2, "Signin.GetAccountsBackoffRetries"

    invoke-static {v2, v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordExactLinearHistogram(Ljava/lang/String;II)V

    :cond_3
    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->o(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->e(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->t(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    return-void
.end method
