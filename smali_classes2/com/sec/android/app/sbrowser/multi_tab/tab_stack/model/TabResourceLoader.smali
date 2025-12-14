.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;

.field private mIsLiteThumbnail:Z

.field private final mLoadThread:Landroid/os/HandlerThread;

.field private mLoadThreadHandler:Landroid/os/Handler;

.field private mMainThreadHandler:Landroid/os/Handler;

.field public mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TabResourceLoader"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->initialize()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mIsLiteThumbnail:Z

    return p0
.end method

.method private getDiskBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;->getDiskBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "TabResourceLoader"

    const-string v0, "Thread is not alive"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private nextTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mCancelled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private stopThreadHandler()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThreadHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private waitIfQueueEmpty()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mCancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public addTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTabs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->addTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mCancelled:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->nextTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mIsLiteThumbnail:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->getDiskBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mCancelled:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;->isMultiTabAnimating()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;->isFirstIntroAnimation()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->waitIfQueueEmpty()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setIsLiteThumbnail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mIsLiteThumbnail:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mCancelled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 2

    const-string v0, "TabResourceLoader"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mCancelled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->stopThreadHandler()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;

    return-void
.end method
