.class public final Lr7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/ArrayDeque;

.field public c:Lr7/h;

.field public d:J

.field public final e:Lc5/A;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lr7/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr7/i;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lr7/i;->b:Ljava/util/ArrayDeque;

    sget-object v0, Lr7/h;->IDLE:Lr7/h;

    iput-object v0, p0, Lr7/i;->c:Lr7/h;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr7/i;->d:J

    new-instance v0, Lc5/A;

    invoke-direct {v0, p0}, Lc5/A;-><init>(Lr7/i;)V

    iput-object v0, p0, Lr7/i;->e:Lc5/A;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p1, p0, Lr7/i;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object v0, p0, Lr7/i;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr7/i;->c:Lr7/h;

    sget-object v2, Lr7/h;->RUNNING:Lr7/h;

    if-eq v1, v2, :cond_6

    sget-object v2, Lr7/h;->QUEUED:Lr7/h;

    if-ne v1, v2, :cond_0

    goto :goto_5

    :cond_0
    iget-wide v3, p0, Lr7/i;->d:J

    new-instance v1, LH4/r;

    const/4 v5, 0x3

    invoke-direct {v1, p1, v5}, LH4/r;-><init>(Ljava/lang/Runnable;I)V

    iget-object p1, p0, Lr7/i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    sget-object p1, Lr7/h;->QUEUING:Lr7/h;

    iput-object p1, p0, Lr7/i;->c:Lr7/h;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lr7/i;->a:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lr7/i;->e:Lc5/A;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lr7/i;->c:Lr7/h;

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lr7/i;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_2
    iget-wide v5, p0, Lr7/i;->d:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lr7/i;->c:Lr7/h;

    if-ne v1, p1, :cond_2

    iput-object v2, p0, Lr7/i;->c:Lr7/h;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p1

    iget-object v2, p0, Lr7/i;->b:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lr7/i;->c:Lr7/h;

    sget-object v3, Lr7/h;->IDLE:Lr7/h;

    if-eq v0, v3, :cond_3

    sget-object v3, Lr7/h;->QUEUING:Lr7/h;

    if-ne v0, v3, :cond_4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    iget-object p0, p0, Lr7/i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    instance-of v0, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v0, :cond_5

    if-nez p0, :cond_5

    monitor-exit v2

    return-void

    :cond_5
    throw p1

    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_6

    :cond_6
    :goto_5
    :try_start_4
    iget-object p0, p0, Lr7/i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SequentialExecutor@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr7/i;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
