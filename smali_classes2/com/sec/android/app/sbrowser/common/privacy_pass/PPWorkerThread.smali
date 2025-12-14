.class public abstract Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createExecutorServiceIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract createExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "mExecutorService is already null."

    const-string v1, "PPWorkerThread"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->createExecutorServiceIfNeeded()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_2

    :cond_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_5

    :goto_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :goto_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :goto_5
    return-void

    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_7

    :cond_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    throw p1
.end method
