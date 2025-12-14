.class public Lorg/chromium/base/task/TaskRunnerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/task/TaskRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;,
        Lorg/chromium/base/task/TaskRunnerImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final sCleaners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private static sPendingTaskLock:Ljava/lang/Object;

.field private static final sPendingTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private static sPendingTaskMapNextIndex:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private static final sPendingTaskTable:[Ljava/lang/Runnable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private static final sQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDidOneTimeInitialization:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private volatile mNativeTaskRunnerAndroid:J

.field private mPreNativeDelayedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mPreNativeTaskLock:Ljava/lang/Object;

.field private mPreNativeTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field protected final mRunPreNativeTaskClosure:Ljava/lang/Runnable;

.field private final mTaskRunnerType:I

.field private final mTaskTraits:I

.field private final mTraceEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskLock:Ljava/lang/Object;

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/Runnable;

    sput-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskTable:[Ljava/lang/Runnable;

    array-length v0, v0

    sput v0, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskMapNextIndex:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string v0, "TaskRunnerImpl"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(ILjava/lang/String;I)V

    invoke-static {}, Lorg/chromium/base/task/TaskRunnerImpl;->destroyGarbageCollectedTaskRunners()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/task/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/task/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mRunPreNativeTaskClosure:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    iput p1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:I

    const-string p1, ".PreNativeTask.run"

    invoke-static {p2, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTraceEvent:Ljava/lang/String;

    iput p3, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskRunnerType:I

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/task/TaskRunnerImpl;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    return-wide v0
.end method

.method public static bridge synthetic b()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static dequeueTask(I)Ljava/lang/Runnable;
    .locals 4

    sget-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskTable:[Ljava/lang/Runnable;

    array-length v2, v1

    if-ge p0, v2, :cond_0

    aget-object v2, v1, p0

    const/4 v3, 0x0

    aput-object v3, v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static destroyGarbageCollectedTaskRunners()V
    .locals 2

    :goto_0
    sget-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;->destroy()V

    sget-object v1, Lorg/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private oneTimeInitialization()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mDidOneTimeInitialization:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mDidOneTimeInitialization:Z

    invoke-static {p0}, Lorg/chromium/base/task/PostTask;->registerPreNativeTaskRunner(Lorg/chromium/base/task/TaskRunnerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->initNativeTaskRunner()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    :goto_0
    return-void
.end method

.method private static queueDelayedTaskToNative(JLjava/lang/Runnable;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lorg/chromium/base/task/TaskRunnerImpl;->queueTask(Ljava/lang/Runnable;Z)I

    move-result v6

    invoke-static {}, Lorg/chromium/base/task/TaskRunnerImplJni;->get()Lorg/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lorg/chromium/base/task/TaskRunnerImpl$Natives;->postDelayedTask(JJI)V

    return-void
.end method

.method private static queueTask(Ljava/lang/Runnable;Z)I
    .locals 4

    sget-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v2, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskTable:[Ljava/lang/Runnable;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    aput-object p0, v2, v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget p1, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskMapNextIndex:I

    add-int/lit8 v1, p1, 0x1

    sput v1, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskMapNextIndex:I

    sget-object v1, Lorg/chromium/base/task/TaskRunnerImpl;->sPendingTaskMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static runTask(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->dequeueTask(I)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/base/task/TaskRunnerImpl;->postDelayedTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public initNativeTaskRunner()V
    .locals 9

    invoke-static {}, Lorg/chromium/base/task/TaskRunnerImplJni;->get()Lorg/chromium/base/task/TaskRunnerImpl$Natives;

    move-result-object v0

    iget v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskRunnerType:I

    iget v2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTaskTraits:I

    invoke-interface {v0, v1, v2}, Lorg/chromium/base/task/TaskRunnerImpl$Natives;->init(II)J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v5, v6, v7}, Lorg/chromium/base/task/TaskRunnerImpl;->queueDelayedTaskToNative(JLjava/lang/Runnable;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iput-object v4, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    :cond_1
    iget-object v3, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Runnable;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v0, v1, v6, v7, v8}, Lorg/chromium/base/task/TaskRunnerImpl;->queueDelayedTaskToNative(JLjava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    :cond_3
    iput-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/chromium/base/task/TaskRunnerImpl;->sCleaners:Ljava/util/Set;

    monitor-enter v0

    :try_start_1
    new-instance v1, Lorg/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;

    invoke-direct {v1, p0}, Lorg/chromium/base/task/TaskRunnerImpl$TaskRunnerCleaner;-><init>(Lorg/chromium/base/task/TaskRunnerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lorg/chromium/base/task/TaskRunnerImpl;->destroyGarbageCollectedTaskRunners()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final postDelayedTask(Ljava/lang/Runnable;J)V
    .locals 6

    sget-boolean v0, Lorg/chromium/base/task/PostTask;->ENABLE_TASK_ORIGINS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/task/TaskOriginException;

    invoke-direct {v0}, Lorg/chromium/base/task/TaskOriginException;-><init>()V

    invoke-static {v0, p1}, Lorg/chromium/base/task/PostTask;->populateTaskOrigin(Lorg/chromium/base/task/TaskOriginException;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :cond_0
    iget-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/chromium/base/task/TaskRunnerImpl;->queueDelayedTaskToNative(JLjava/lang/Runnable;J)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->oneTimeInitialization()V

    iget-wide v4, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mNativeTaskRunnerAndroid:J

    invoke-static {v1, v2, p1, p2, p3}, Lorg/chromium/base/task/TaskRunnerImpl;->queueDelayedTaskToNative(JLjava/lang/Runnable;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    cmp-long v1, p2, v2

    if-nez v1, :cond_3

    iget-object p2, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->schedulePreNativeTask()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/base/task/TaskRunnerImpl;->schedulePreNativeDelayedTask(Ljava/lang/Runnable;J)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeDelayedTasks:Ljava/util/List;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public runPreNativeTask()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mTraceEvent:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTaskLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mPreNativeTasks:Ljava/util/Queue;

    if-nez p0, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method public schedulePreNativeDelayedTask(Ljava/lang/Runnable;J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public schedulePreNativeTask()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/task/PostTask;->getPrenativeThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/base/task/TaskRunnerImpl;->mRunPreNativeTaskClosure:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
