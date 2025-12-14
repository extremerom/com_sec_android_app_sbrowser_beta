.class Lorg/chromium/base/task/SerialExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/task/SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/task/SerialExecutor;->lambda$execute$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Ljava/lang/Runnable;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/base/task/SerialExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/chromium/base/task/SerialExecutor;->scheduleNext()V

    throw p1
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/task/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lorg/chromium/base/task/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lorg/chromium/base/task/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/base/task/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/task/SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/task/SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/chromium/base/task/SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
