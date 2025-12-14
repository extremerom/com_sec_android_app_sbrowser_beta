.class abstract Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$DisorderPool;,
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$OrderPool;
    }
.end annotation


# instance fields
.field private mExecutingMessageCount:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mMainLoopHandler:Landroid/os/Handler;

.field private mShutDown:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mShutDown:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mMainLoopHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutingMessageCount:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mMainLoopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mShutDown:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutingMessageCount:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mShutDown:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->postExecute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V

    return-void
.end method

.method private postExecute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$2;-><init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public abstract createExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mShutDown:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mMainLoopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mShutDown:Ljava/lang/Runnable;

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutingMessageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutingMessageCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
