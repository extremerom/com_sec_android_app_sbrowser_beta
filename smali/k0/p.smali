.class public final Lk0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/r;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lub/c;


# instance fields
.field public a:Lk0/o;


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 7

    :cond_0
    sget-object v0, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    iget v2, v1, Lk0/o;->d:I

    iget-object v1, v1, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2}, Le0/b;->i(ILjava/lang/Object;)Le0/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v5

    invoke-static {v1, p0, v5}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v6, v1, Lk0/o;->d:I

    if-ne v6, v2, :cond_2

    iput-object v3, v1, Lk0/o;->c:Le0/b;

    iget v2, v1, Lk0/o;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lk0/o;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lk0/o;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    invoke-static {v5, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v3, :cond_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v4

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 9

    :cond_0
    sget-object v0, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    iget v2, v1, Lk0/o;->d:I

    iget-object v1, v1, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Le0/b;->m(Ljava/lang/Object;)Le0/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v6

    invoke-static {v1, p0, v6}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v7, v1, Lk0/o;->d:I

    const/4 v8, 0x1

    if-ne v7, v2, :cond_2

    iput-object v3, v1, Lk0/o;->c:Le0/b;

    iget v2, v1, Lk0/o;->e:I

    add-int/2addr v2, v8

    iput v2, v1, Lk0/o;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lk0/o;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v8

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-static {v6, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v4, :cond_0

    move v4, v8

    :goto_1
    return v4

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v5

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    new-instance v0, LR/e;

    invoke-direct {v0, p1, p2}, LR/e;-><init>(ILjava/util/Collection;)V

    invoke-virtual {p0, v0}, Lk0/p;->r(Lsb/k;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 9

    :cond_0
    sget-object v0, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    iget v2, v1, Lk0/o;->d:I

    iget-object v1, v1, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Le0/b;->n(Ljava/util/Collection;)Le0/b;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v6

    invoke-static {v1, p0, v6}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v7, v1, Lk0/o;->d:I

    const/4 v8, 0x1

    if-ne v7, v2, :cond_2

    iput-object v3, v1, Lk0/o;->c:Le0/b;

    iget v2, v1, Lk0/o;->e:I

    add-int/2addr v2, v8

    iput v2, v1, Lk0/o;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lk0/o;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v8

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-static {v6, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v4, :cond_0

    move v4, v8

    :goto_1
    return v4

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v5

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Lk0/p;->a:Lk0/o;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v0

    check-cast v0, Lk0/o;

    sget-object v3, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Le0/h;->b:Le0/h;

    iput-object v4, v0, Lk0/o;->c:Le0/b;

    iget v4, v0, Lk0/o;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lk0/o;->d:I

    iget v4, v0, Lk0/o;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lk0/o;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    invoke-static {v2, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lk0/p;->n()Lk0/o;

    move-result-object p0

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0}, Lk0/p;->n()Lk0/o;

    move-result-object p0

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lk0/p;->n()Lk0/o;

    move-result-object p0

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lk0/t;
    .locals 0

    iget-object p0, p0, Lk0/p;->a:Lk0/o;

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lk0/p;->n()Lk0/o;

    move-result-object p0

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lk0/p;->n()Lk0/o;

    move-result-object p0

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lk0/p;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0}, Lk0/p;->n()Lk0/o;

    move-result-object p0

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lgb/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgb/a;-><init>(Lk0/p;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lgb/a;

    invoke-direct {v0, p0, p1}, Lgb/a;-><init>(Lk0/p;I)V

    return-object v0
.end method

.method public final m(Lk0/t;)V
    .locals 1

    iget-object v0, p0, Lk0/p;->a:Lk0/o;

    iput-object v0, p1, Lk0/t;->b:Lk0/t;

    check-cast p1, Lk0/o;

    iput-object p1, p0, Lk0/p;->a:Lk0/o;

    return-void
.end method

.method public final n()Lk0/o;
    .locals 2

    iget-object v0, p0, Lk0/p;->a:Lk0/o;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lk0/n;->s(Lk0/t;Lk0/r;)Lk0/t;

    move-result-object p0

    check-cast p0, Lk0/o;

    return-object p0
.end method

.method public final p()I
    .locals 1

    iget-object p0, p0, Lk0/p;->a:Lk0/o;

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object p0

    check-cast p0, Lk0/o;

    iget p0, p0, Lk0/o;->e:I

    return p0
.end method

.method public final r(Lsb/k;)Z
    .locals 8

    :cond_0
    sget-object v0, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    iget v2, v1, Lk0/o;->d:I

    iget-object v1, v1, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Le0/b;->p()Le0/e;

    move-result-object v3

    invoke-interface {p1, v3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Le0/e;->m()Le0/b;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v6

    invoke-static {v1, p0, v6}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v7, v1, Lk0/o;->d:I

    if-ne v7, v2, :cond_1

    iput-object v3, v1, Lk0/o;->c:Le0/b;

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lk0/o;->d:I

    iget v2, v1, Lk0/o;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lk0/o;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-static {v6, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v3, :cond_0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v5

    throw p0

    :cond_2
    :goto_3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0, p1}, Lk0/p;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    sget-object v1, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lk0/p;->a:Lk0/o;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v2, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v2

    check-cast v2, Lk0/o;

    iget v3, v2, Lk0/o;->d:I

    iget-object v2, v2, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v1

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Le0/b;->s(I)Le0/b;

    move-result-object v4

    invoke-static {v4, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lk0/p;->a:Lk0/o;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v2, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v6

    invoke-static {v2, p0, v6}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v2

    check-cast v2, Lk0/o;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v7, v2, Lk0/o;->d:I

    if-ne v7, v3, :cond_2

    iput-object v4, v2, Lk0/o;->c:Le0/b;

    iget v3, v2, Lk0/o;->e:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lk0/o;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lk0/o;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-static {v6, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v1

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v5

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9

    :cond_0
    sget-object v0, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    iget v2, v1, Lk0/o;->d:I

    iget-object v1, v1, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lfb/e;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v3}, Le0/b;->s(I)Le0/b;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v6

    invoke-static {v1, p0, v6}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v7, v1, Lk0/o;->d:I

    const/4 v8, 0x1

    if-ne v7, v2, :cond_3

    iput-object v3, v1, Lk0/o;->c:Le0/b;

    iget v2, v1, Lk0/o;->e:I

    add-int/2addr v2, v8

    iput v2, v1, Lk0/o;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lk0/o;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v8

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-static {v6, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v4, :cond_0

    move v4, v8

    :goto_2
    return v4

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit v5

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 9

    :cond_0
    sget-object v0, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    iget v2, v1, Lk0/o;->d:I

    iget-object v1, v1, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v3, Landroidx/fragment/app/n;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Landroidx/fragment/app/n;-><init>(ILjava/util/Collection;)V

    invoke-virtual {v1, v3}, Le0/b;->r(Landroidx/fragment/app/n;)Le0/b;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lk0/p;->a:Lk0/o;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v1, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v6

    invoke-static {v1, p0, v6}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, Lk0/o;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v7, v1, Lk0/o;->d:I

    const/4 v8, 0x1

    if-ne v7, v2, :cond_2

    iput-object v3, v1, Lk0/o;->c:Le0/b;

    iget v2, v1, Lk0/o;->e:I

    add-int/2addr v2, v8

    iput v2, v1, Lk0/o;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lk0/o;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v8

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-static {v6, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v4, :cond_0

    move v4, v8

    :goto_1
    return v4

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v5

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    new-instance v0, Landroidx/fragment/app/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/n;-><init>(ILjava/util/Collection;)V

    invoke-virtual {p0, v0}, Lk0/p;->r(Lsb/k;)Z

    move-result p0

    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0, p1}, Lk0/p;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    sget-object v1, Lk0/q;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lk0/p;->a:Lk0/o;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v2, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v2

    check-cast v2, Lk0/o;

    iget v3, v2, Lk0/o;->d:I

    iget-object v2, v2, Lk0/o;->c:Le0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v1

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2}, Le0/b;->u(ILjava/lang/Object;)Le0/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lk0/p;->a:Lk0/o;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v2, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v6

    invoke-static {v2, p0, v6}, Lk0/n;->v(Lk0/t;Lk0/r;Lk0/h;)Lk0/t;

    move-result-object v2

    check-cast v2, Lk0/o;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v7, v2, Lk0/o;->d:I

    if-ne v7, v3, :cond_2

    iput-object v4, v2, Lk0/o;->c:Le0/b;

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lk0/o;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    invoke-static {v6, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_4
    monitor-exit v1

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v5

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final size()I
    .locals 0

    invoke-virtual {p0}, Lk0/p;->n()Lk0/o;

    move-result-object p0

    iget-object p0, p0, Lk0/o;->c:Le0/b;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lk0/p;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lk0/u;

    invoke-direct {v0, p0, p1, p2}, Lk0/u;-><init>(Lk0/p;II)V

    return-object v0

    :cond_1
    const-string p0, "fromIndex or toIndex are out of bounds"

    invoke-static {p0}, La0/d;->N(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ltb/k;->m(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ltb/k;->n(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk0/p;->a:Lk0/o;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateList.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v0

    check-cast v0, Lk0/o;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SnapshotStateList(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lk0/o;->c:Le0/b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
