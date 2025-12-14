.class public Lorg/chromium/base/task/PostTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/task/PostTask$TaskOriginRunnable;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ENABLE_TASK_ORIGINS:Z

.field private static volatile sDisablePreNativeUiTasks:Z

.field private static volatile sNativeInitialized:Z

.field private static final sPreNativeTaskRunnerLock:Ljava/lang/Object;

.field private static sPreNativeTaskRunners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/task/TaskRunnerImpl;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private static sPrenativeThreadPoolExecutor:Lorg/chromium/base/task/ChromeThreadPoolExecutor;

.field private static volatile sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

.field private static final sTaskOrigin:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/chromium/base/task/TaskOriginException;",
            ">;"
        }
    .end annotation
.end field

.field static sTestIterationForTesting:I

.field private static final sTraitsToRunnerMap:[Lorg/chromium/base/task/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    sput-boolean v0, Lorg/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunnerLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    new-instance v1, Lorg/chromium/base/task/ChromeThreadPoolExecutor;

    invoke-direct {v1}, Lorg/chromium/base/task/ChromeThreadPoolExecutor;-><init>()V

    sput-object v1, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Lorg/chromium/base/task/ChromeThreadPoolExecutor;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lorg/chromium/base/task/PostTask;->sTaskOrigin:Ljava/lang/ThreadLocal;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/chromium/base/task/TaskRunner;

    sput-object v0, Lorg/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Lorg/chromium/base/task/TaskRunner;

    invoke-static {}, Lorg/chromium/base/task/PostTask;->resetTaskRunner()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lorg/chromium/base/task/PostTask;->sTaskOrigin:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static canRunTaskImmediately(I)Z
    .locals 1

    invoke-static {p0}, Lorg/chromium/base/task/PostTask;->isUiTaskTraits(I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lorg/chromium/base/task/PostTask;->sDisablePreNativeUiTasks:Z

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static createSequencedTaskRunner(I)Lorg/chromium/base/task/SequencedTaskRunner;
    .locals 1

    invoke-static {p0}, Lorg/chromium/base/task/PostTask;->isUiTaskTraits(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Lorg/chromium/base/task/TaskRunner;

    aget-object p0, v0, p0

    check-cast p0, Lorg/chromium/base/task/SequencedTaskRunner;

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/base/task/SequencedTaskRunnerImpl;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/SequencedTaskRunnerImpl;-><init>(I)V

    return-object v0
.end method

.method public static getPrenativeThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutorForTesting:Ljava/util/concurrent/Executor;

    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/base/task/PostTask;->sPrenativeThreadPoolExecutor:Lorg/chromium/base/task/ChromeThreadPoolExecutor;

    return-object v0
.end method

.method public static getTaskOrigin()Ljava/lang/Exception;
    .locals 1

    sget-boolean v0, Lorg/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/task/PostTask;->sTaskOrigin:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isUiTaskTraits(I)Z
    .locals 1

    const/4 v0, 0x6

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maybeAddTaskOrigin(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/task/PostTask;->getTaskOrigin()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object p0
.end method

.method private static onNativeSchedulerReady()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-boolean v0, Lorg/chromium/base/task/PostTask;->sNativeInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/task/PostTask;->sNativeInitialized:Z

    sget-object v0, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    const/4 v2, 0x0

    sput-object v2, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-virtual {v1}, Lorg/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunner()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static populateTaskOrigin(Lorg/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    instance-of v0, p1, Lorg/chromium/base/task/PostTask$TaskOriginRunnable;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lorg/chromium/base/task/PostTask$TaskOriginRunnable;

    invoke-direct {v0, p0, p1}, Lorg/chromium/base/task/PostTask$TaskOriginRunnable;-><init>(Lorg/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static postDelayedTask(ILjava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lorg/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Lorg/chromium/base/task/TaskRunner;

    aget-object p0, v0, p0

    invoke-interface {p0, p1, p2, p3}, Lorg/chromium/base/task/TaskRunner;->postDelayedTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static postTask(ILjava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static preNativeUiTasksAreDisabled()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/base/task/PostTask;->sDisablePreNativeUiTasks:Z

    return v0
.end method

.method public static registerPreNativeTaskRunner(Lorg/chromium/base/task/TaskRunnerImpl;)Z
    .locals 2

    sget-object v0, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->sPreNativeTaskRunners:Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static resetTaskRunner()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    sget-object v1, Lorg/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Lorg/chromium/base/task/TaskRunner;

    new-instance v2, Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-direct {v2, v0}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    sget-object v1, Lorg/chromium/base/task/PostTask;->sTraitsToRunnerMap:[Lorg/chromium/base/task/TaskRunner;

    new-instance v2, Lorg/chromium/base/task/UiThreadTaskRunnerImpl;

    invoke-direct {v2, v0}, Lorg/chromium/base/task/UiThreadTaskRunnerImpl;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static runOrPostTask(ILjava/lang/Runnable;)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/base/task/PostTask;->canRunTaskImmediately(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static runSynchronously(ILjava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runSynchronouslyInternal(ILjava/util/concurrent/FutureTask;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static runSynchronously(ILjava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runSynchronouslyInternal(ILjava/util/concurrent/FutureTask;)Ljava/lang/Object;

    return-void
.end method

.method private static runSynchronouslyInternal(ILjava/util/concurrent/FutureTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-boolean v0, Lorg/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/chromium/base/task/PostTask;->populateTaskOrigin(Lorg/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
