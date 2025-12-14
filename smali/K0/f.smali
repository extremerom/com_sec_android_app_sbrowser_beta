.class public final LK0/f;
.super LG5/H3;
.source "SourceFile"


# virtual methods
.method public final b(LK0/h;LK0/d;LK0/d;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, LK0/h;->b:LK0/d;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, LK0/h;->b:LK0/d;

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

.method public final c(LK0/h;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, LK0/h;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, LK0/h;->a:Ljava/lang/Object;

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

.method public final d(LK0/h;LK0/g;LK0/g;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, LK0/h;->c:LK0/g;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, LK0/h;->c:LK0/g;

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

.method public final l(LK0/g;LK0/g;)V
    .locals 0

    iput-object p2, p1, LK0/g;->b:LK0/g;

    return-void
.end method

.method public final m(LK0/g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, LK0/g;->a:Ljava/lang/Thread;

    return-void
.end method
