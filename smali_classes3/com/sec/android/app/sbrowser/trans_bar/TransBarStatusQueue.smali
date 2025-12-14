.class public Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mStatusQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mStatusQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public addStatusQueue(Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mStatusQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public clearStatusQueue()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mStatusQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public executeStatusQueue()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->clearStatusQueue()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mStatusQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mStatusQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;->runStatusAction(Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setupStatusQueue(Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;

    return-void
.end method
