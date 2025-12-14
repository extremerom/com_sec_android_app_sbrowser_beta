.class public final Lcom/google/common/util/concurrent/f;
.super LG5/i2;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/c;Lcom/google/common/util/concurrent/c;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/common/util/concurrent/o;->b:Lcom/google/common/util/concurrent/c;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/common/util/concurrent/o;->b:Lcom/google/common/util/concurrent/c;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/google/common/util/concurrent/o;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/common/util/concurrent/o;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/common/util/concurrent/o;->a:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/n;Lcom/google/common/util/concurrent/n;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lcom/google/common/util/concurrent/o;->c:Lcom/google/common/util/concurrent/n;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lcom/google/common/util/concurrent/o;->c:Lcom/google/common/util/concurrent/n;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/c;
    .locals 1

    sget-object p0, Lcom/google/common/util/concurrent/c;->d:Lcom/google/common/util/concurrent/c;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/o;->b:Lcom/google/common/util/concurrent/c;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lcom/google/common/util/concurrent/o;->b:Lcom/google/common/util/concurrent/c;

    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g(Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/n;
    .locals 1

    sget-object p0, Lcom/google/common/util/concurrent/n;->c:Lcom/google/common/util/concurrent/n;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/o;->c:Lcom/google/common/util/concurrent/n;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lcom/google/common/util/concurrent/o;->c:Lcom/google/common/util/concurrent/n;

    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final h(Lcom/google/common/util/concurrent/n;Lcom/google/common/util/concurrent/n;)V
    .locals 0

    iput-object p2, p1, Lcom/google/common/util/concurrent/n;->b:Lcom/google/common/util/concurrent/n;

    return-void
.end method

.method public final i(Lcom/google/common/util/concurrent/n;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/common/util/concurrent/n;->a:Ljava/lang/Thread;

    return-void
.end method
