.class public final Lkd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkd/c;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:Lkd/a;

.field public final e:Ljava/util/ArrayList;

.field public f:Z


# direct methods
.method public constructor <init>(Lkd/c;Ljava/lang/String;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd/b;->a:Lkd/c;

    iput-object p2, p0, Lkd/b;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkd/b;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic d(Lkd/b;Lkd/a;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkd/b;->c(Lkd/a;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lid/b;->a:[B

    iget-object v0, p0, Lkd/b;->a:Lkd/c;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lkd/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkd/b;->a:Lkd/c;

    invoke-virtual {v1, p0}, Lkd/c;->d(Lkd/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b()Z
    .locals 7

    const/4 v0, -0x1

    iget-object v1, p0, Lkd/b;->d:Lkd/a;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lkd/a;->b:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lkd/b;->f:Z

    :cond_0
    iget-object v1, p0, Lkd/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkd/a;

    iget-boolean v5, v5, Lkd/a;->b:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkd/a;

    sget-object v5, Lkd/c;->h:Lu5/d;

    sget-object v5, Lkd/c;->j:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "canceled"

    invoke-static {v4, p0, v5}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v4, v2

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    return v4
.end method

.method public final c(Lkd/a;J)V
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkd/b;->a:Lkd/c;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lkd/b;->c:Z

    if-eqz v1, :cond_3

    iget-boolean p2, p1, Lkd/a;->b:Z

    if-eqz p2, :cond_1

    sget-object p2, Lkd/c;->h:Lu5/d;

    sget-object p2, Lkd/c;->j:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "schedule canceled (queue is shutdown)"

    invoke-static {p1, p0, p2}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sget-object p2, Lkd/c;->h:Lu5/d;

    sget-object p2, Lkd/c;->j:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "schedule failed (queue is shutdown)"

    invoke-static {p1, p0, p2}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V

    :cond_2
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lkd/b;->e(Lkd/a;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lkd/b;->a:Lkd/c;

    invoke-virtual {p1, p0}, Lkd/c;->d(Lkd/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final e(Lkd/a;JZ)Z
    .locals 11

    const/4 v0, 0x1

    const-string v1, "task"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lkd/a;->c:Lkd/b;

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_a

    iput-object p0, p1, Lkd/a;->c:Lkd/b;

    :goto_0
    iget-object v1, p0, Lkd/b;->a:Lkd/c;

    iget-object v1, v1, Lkd/c;->a:LX4/i;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    add-long v3, v1, p2

    iget-object v5, p0, Lkd/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    iget-wide v9, p1, Lkd/a;->d:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    sget-object p2, Lkd/c;->h:Lu5/d;

    sget-object p2, Lkd/c;->j:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "already scheduled"

    invoke-static {p1, p0, p2}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V

    :cond_1
    return v7

    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iput-wide v3, p1, Lkd/a;->d:J

    sget-object v6, Lkd/c;->h:Lu5/d;

    sget-object v6, Lkd/c;->j:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p4, :cond_4

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Landroidx/activity/t;->d(J)Ljava/lang/String;

    move-result-object p4

    const-string v3, "run again after "

    invoke-virtual {v3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_4
    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Landroidx/activity/t;->d(J)Ljava/lang/String;

    move-result-object p4

    const-string v3, "scheduled after "

    invoke-virtual {v3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_1
    invoke-static {p1, p0, p4}, Landroidx/activity/t;->a(Lkd/a;Lkd/b;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p4, v7

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkd/a;

    iget-wide v3, v3, Lkd/a;->d:J

    sub-long/2addr v3, v1

    cmp-long v3, v3, p2

    if-lez v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/2addr p4, v0

    goto :goto_2

    :cond_7
    move p4, v8

    :goto_3
    if-ne p4, v8, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p4

    :cond_8
    invoke-virtual {v5, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez p4, :cond_9

    goto :goto_4

    :cond_9
    move v0, v7

    :goto_4
    return v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "task is in multiple queues"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lid/b;->a:[B

    iget-object v0, p0, Lkd/b;->a:Lkd/c;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lkd/b;->c:Z

    invoke-virtual {p0}, Lkd/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkd/b;->a:Lkd/c;

    invoke-virtual {v1, p0}, Lkd/c;->d(Lkd/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkd/b;->b:Ljava/lang/String;

    return-object p0
.end method
