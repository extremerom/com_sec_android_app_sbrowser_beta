.class public abstract LRc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[LRc/d;

.field public b:I

.field public c:I

.field public d:LRc/M;


# virtual methods
.method public final c()LRc/d;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LRc/b;->a:[LRc/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LRc/b;->f()[LRc/d;

    move-result-object v0

    iput-object v0, p0, LRc/b;->a:[LRc/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v1, p0, LRc/b;->b:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [LRc/d;

    iput-object v1, p0, LRc/b;->a:[LRc/d;

    check-cast v0, [LRc/d;

    :cond_1
    :goto_0
    iget v1, p0, LRc/b;->c:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, LRc/b;->d()LRc/d;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, p0}, LRc/d;->a(LRc/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, LRc/b;->c:I

    iget v0, p0, LRc/b;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, LRc/b;->b:I

    iget-object v0, p0, LRc/b;->d:LRc/M;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, LRc/M;->v(I)V

    :cond_5
    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract d()LRc/d;
.end method

.method public abstract f()[LRc/d;
.end method

.method public final g(LRc/d;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, LRc/b;->b:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, LRc/b;->b:I

    iget-object v2, p0, LRc/b;->d:LRc/M;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, LRc/b;->c:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, LRc/d;->b(LRc/b;)[Lib/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length p0, p1

    :goto_1
    if-ge v3, p0, :cond_2

    aget-object v0, p1, v3

    if-eqz v0, :cond_1

    sget-object v4, Ldb/r;->a:Ldb/r;

    invoke-interface {v0, v4}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, LRc/M;->v(I)V

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final h()LRc/M;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LRc/b;->d:LRc/M;

    if-nez v0, :cond_0

    new-instance v0, LRc/M;

    iget v1, p0, LRc/b;->b:I

    sget-object v2, LPc/a;->DROP_OLDEST:LPc/a;

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-direct {v0, v3, v4, v2}, LQc/m0;-><init>(IILPc/a;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LQc/m0;->a(Ljava/lang/Object;)Z

    iput-object v0, p0, LRc/b;->d:LRc/M;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
