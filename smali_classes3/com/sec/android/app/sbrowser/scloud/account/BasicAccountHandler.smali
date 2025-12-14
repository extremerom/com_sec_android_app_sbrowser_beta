.class final Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mForceRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMasterLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mRequestState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

.field private mSamsungAccountSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mRequestState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mForceRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mMasterLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountSuccess:Z

    return-void
.end method

.method private finalizeAndInvokeCallback(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mMasterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mRequestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountSuccess:Z

    const-string p1, "BasicAccountHandler"

    const-string v0, "Called finalizeAndInvokeCallback."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->invokeCallbackAndFree()V

    return-void
.end method

.method private invokeCallbackAndFree()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->invokeRunnable(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private invokeRunnable(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountSuccess:Z

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private refresh()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mMasterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mMasterLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkForceRefreshAndSet()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mForceRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->refresh()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountSuccess:Z

    const-string p0, "BasicAccountHandler"

    const-string v0, "Cleared previous samsung mobile web account info"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->get(JLjava/util/concurrent/TimeUnit;)Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout occurred and returned previous instance : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BasicAccountHandler"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    return-object p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mMasterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/account/NoSamsungAccountInfoException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/account/NoSamsungAccountInfoException;-><init>(I)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    const-string p2, "BasicAccountHandler"

    const-string p3, "Interrupt on getting samsung account info"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/account/NoSamsungAccountInfoException;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/NoSamsungAccountInfoException;-><init>(I)V

    throw p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->get(JLjava/util/concurrent/TimeUnit;)Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized init(Ljava/lang/Runnable;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getInternetAccount()Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mForceRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mRequestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BasicAccountHandler"

    const-string v1, "Force refreshing token as requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->refresh()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    const-string p1, "BasicAccountHandler"

    const-string v0, "Another force refresh is under processing"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mMasterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mRequestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string p1, "BasicAccountHandler"

    const-string v0, "Another request is under processing"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    if-nez v0, :cond_5

    const-string v0, "BasicAccountHandler"

    const-string v1, "Previously empty token"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->refresh()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :goto_0
    :try_start_5
    const-string p1, "BasicAccountHandler"

    const-string v0, "The account is not registered."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->finalizeAndInvokeCallback(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public isCancelled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountSuccess:Z

    return p0
.end method

.method public set(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->finalizeAndInvokeCallback(Z)V

    return-void
.end method

.method public setError(I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->updateRefresh(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountInfo:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->finalizeAndInvokeCallback(Z)V

    return-void
.end method

.method public updateRefresh(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mForceRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public updateStateProcessing()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mRequestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->mSamsungAccountSuccess:Z

    return-void
.end method
