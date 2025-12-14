.class Lorg/chromium/base/task/AsyncTask$StealRunnableHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/task/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StealRunnableHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask$StealRunnableHandler;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/task/AsyncTask$StealRunnableHandler;->lambda$rejectedExecution$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$rejectedExecution$0(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadPriority(II)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    throw p0
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p2, Lorg/chromium/base/task/b;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lorg/chromium/base/task/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
