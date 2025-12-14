.class Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/signin/AccountManagerFacadeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetAccountAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/util/List<",
        "Lorg/chromium/components/signin/base/GaiaId;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput-object p2, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->mEmails:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->doInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/GaiaId;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->mEmails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/base/task/AsyncTask;->isCancelled()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return-object v6

    :cond_0
    iget-object v5, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v5}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/chromium/components/signin/AccountManagerDelegate;->getAccountGaiaId(Ljava/lang/String;)Lorg/chromium/components/signin/base/GaiaId;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v6

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string p0, "Signin.AndroidGetAccountIdsTime"

    invoke-static {p0, v3, v4}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/GaiaId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->n(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->p(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->mEmails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->mEmails:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/components/signin/base/GaiaId;

    invoke-static {v3, v4}, Lorg/chromium/components/signin/base/CoreAccountInfo;->createFromEmailAndGaiaId(Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)Lorg/chromium/components/signin/base/CoreAccountInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/chromium/components/signin/base/AccountInfo$Builder;

    invoke-direct {v5, v3, v4}, Lorg/chromium/components/signin/base/AccountInfo$Builder;-><init>(Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)V

    invoke-virtual {v5}, Lorg/chromium/components/signin/base/AccountInfo$Builder;->build()Lorg/chromium/components/signin/base/AccountInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->f(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/base/Promise;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/base/Promise;->isFulfilled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/base/Promise;->fulfilled(Ljava/lang/Object;)Lorg/chromium/base/Promise;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->l(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/base/Promise;)V

    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v1}, Lorg/chromium/base/Promise;->fulfilled(Ljava/lang/Object;)Lorg/chromium/base/Promise;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->k(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/base/Promise;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->f(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/base/Promise;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->d(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/base/Promise;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    :goto_1
    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->j(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/base/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/signin/AccountsChangeObserver;

    invoke-interface {p1}, Lorg/chromium/components/signin/AccountsChangeObserver;->onCoreAccountInfosChanged()V

    goto :goto_2

    :cond_3
    return-void
.end method
