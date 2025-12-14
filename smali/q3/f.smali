.class public final Lq3/f;
.super LG5/v;
.source "SourceFile"


# virtual methods
.method public final c(Lq3/h;Lq3/c;Lq3/c;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lq3/h;->b:Lq3/c;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lq3/h;->b:Lq3/c;

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

.method public final d(Lq3/h;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lq3/h;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lq3/h;->a:Ljava/lang/Object;

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

.method public final e(Lq3/h;Lq3/g;Lq3/g;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lq3/h;->c:Lq3/g;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lq3/h;->c:Lq3/g;

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

.method public final j(Lq3/g;Lq3/g;)V
    .locals 0

    iput-object p2, p1, Lq3/g;->b:Lq3/g;

    return-void
.end method

.method public final k(Lq3/g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lq3/g;->a:Ljava/lang/Thread;

    return-void
.end method
