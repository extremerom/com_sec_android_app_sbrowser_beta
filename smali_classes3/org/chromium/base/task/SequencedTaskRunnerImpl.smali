.class public Lorg/chromium/base/task/SequencedTaskRunnerImpl;
.super Lorg/chromium/base/task/TaskRunnerImpl;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/task/SequencedTaskRunner;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mPendingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mReadyToCreateNativeTaskRunner:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "SequencedTaskRunnerImpl"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(ILjava/lang/String;I)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/task/SequencedTaskRunnerImpl;->mPendingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public initNativeTaskRunner()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/task/SequencedTaskRunnerImpl;->mReadyToCreateNativeTaskRunner:Z

    iget-object v0, p0, Lorg/chromium/base/task/SequencedTaskRunnerImpl;->mPendingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunner()V

    :cond_0
    return-void
.end method

.method public runPreNativeTask()V
    .locals 1

    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->runPreNativeTask()V

    iget-object v0, p0, Lorg/chromium/base/task/SequencedTaskRunnerImpl;->mPendingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/base/task/SequencedTaskRunnerImpl;->mReadyToCreateNativeTaskRunner:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->schedulePreNativeTask()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunner()V

    :cond_1
    :goto_0
    return-void
.end method

.method public schedulePreNativeTask()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/task/SequencedTaskRunnerImpl;->mPendingTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->schedulePreNativeTask()V

    :cond_0
    return-void
.end method
