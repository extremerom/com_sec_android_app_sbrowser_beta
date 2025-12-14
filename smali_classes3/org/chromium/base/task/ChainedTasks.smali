.class public Lorg/chromium/base/task/ChainedTasks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile mCanceled:Z

.field private mFinalized:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private mIterationIdForTesting:I

.field private final mTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lorg/chromium/base/task/ChainedTasks;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/base/task/ChainedTasks;->mCanceled:Z

    return p0
.end method

.method public static bridge synthetic b(Lorg/chromium/base/task/ChainedTasks;)I
    .locals 0

    iget p0, p0, Lorg/chromium/base/task/ChainedTasks;->mIterationIdForTesting:I

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/base/task/ChainedTasks;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/task/ChainedTasks;->mTasks:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/chromium/base/task/ChainedTasks;->mFinalized:Z

    iput-boolean v1, p0, Lorg/chromium/base/task/ChainedTasks;->mCanceled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
