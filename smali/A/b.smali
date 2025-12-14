.class public abstract LA/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:J = -0x1L


# direct methods
.method public static a(Ljava/util/Set;I)V
    .locals 5

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/o;

    iget-object v4, v3, Lv/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v2, LN/f;

    invoke-direct {v2, v1}, LN/A;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/o;

    new-instance v4, LN/g;

    invoke-direct {v4, v1}, LN/g;-><init>(I)V

    invoke-static {v3, v0, v2, v4}, LA/b;->f(Lv/o;LN/f;LN/f;LN/g;)I

    move-result v3

    if-gt v3, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lx/b;

    const-string v0, "Too many properties to be indexed, max number of properties allowed: "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static final b(LS2/a;)V
    .locals 4

    const-string v0, "connection"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object v0

    const-string v1, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-interface {p0, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgb/c;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lgb/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    check-cast v1, Lgb/a;

    invoke-virtual {v1}, Lgb/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lgb/a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "room_fts_content_sync_"

    invoke-static {v1, v2, v3}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final c(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, LA/b;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, LA/b;->a:J

    return-wide v0

    :cond_0
    const-class v0, LA/b;

    monitor-enter v0

    :try_start_0
    sget-wide v4, LA/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, LA/a;->a(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {p0}, LA/a;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    sput-wide v1, LA/b;->a:J

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-wide v0, LA/b;->a:J

    return-wide v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static final e(LJ2/U;ZLkb/c;)Lib/h;
    .locals 1

    invoke-virtual {p0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p2

    sget-object v0, LJ2/j0;->c:LF6/e;

    invoke-interface {p2, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p2

    check-cast p2, LJ2/j0;

    if-eqz p2, :cond_0

    iget-object p2, p2, LJ2/j0;->a:Lib/e;

    invoke-virtual {p0}, LJ2/U;->getQueryContext()Lib/h;

    move-result-object v0

    invoke-interface {v0, p2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, LJ2/U;->getTransactionContext$room_runtime_release()Lib/h;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LJ2/U;->getQueryContext()Lib/h;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LJ2/U;->getCoroutineScope()LNc/B;

    move-result-object p0

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p2

    :cond_3
    :goto_0
    return-object p2
.end method

.method public static f(Lv/o;LN/f;LN/f;LN/g;)I
    .locals 8

    iget-object v0, p0, Lv/o;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, LN/g;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p2, v0}, LN/A;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v0}, LN/g;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lv/o;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/l;

    iget-object v4, v3, Lv/l;->a:LB/i;

    iget v4, v4, LB/i;->b:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    check-cast v3, Lv/h;

    iget-object v4, v3, Lv/l;->a:LB/i;

    iget-object v5, v4, LB/i;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v5}, LN/A;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, v4, LB/i;->f:LB/d;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    iget-boolean v4, v4, LB/d;->a:Z

    :goto_1
    if-nez v4, :cond_2

    invoke-virtual {v3}, Lv/h;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    add-int/2addr v3, v2

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v5}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/o;

    invoke-static {v3, p1, p2, p3}, LA/b;->f(Lv/o;LN/f;LN/f;LN/g;)I

    move-result v3

    goto :goto_2

    :goto_3
    move v2, v3

    goto :goto_0

    :cond_3
    new-instance p0, Lx/b;

    const-string p1, "Undefined schema type: "

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v6, 0x1

    if-eq v4, v6, :cond_a

    const/4 v7, 0x2

    if-eq v4, v7, :cond_8

    if-eq v4, v5, :cond_6

    :cond_5
    move v6, v1

    goto :goto_7

    :cond_6
    check-cast v3, Lv/h;

    iget-object v4, v3, Lv/l;->a:LB/i;

    iget-object v4, v4, LB/i;->f:LB/d;

    if-nez v4, :cond_7

    move v4, v1

    goto :goto_4

    :cond_7
    iget-boolean v4, v4, LB/d;->a:Z

    :goto_4
    if-nez v4, :cond_c

    invoke-virtual {v3}, Lv/h;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_7

    :cond_8
    check-cast v3, Lv/k;

    iget-object v3, v3, Lv/l;->a:LB/i;

    iget-object v3, v3, LB/i;->g:LB/f;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_5

    :cond_9
    iget v3, v3, LB/f;->a:I

    :goto_5
    if-eqz v3, :cond_5

    goto :goto_7

    :cond_a
    check-cast v3, Lv/n;

    iget-object v3, v3, Lv/l;->a:LB/i;

    iget-object v3, v3, LB/i;->e:LB/h;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_6

    :cond_b
    iget v3, v3, LB/h;->a:I

    :goto_6
    if-eqz v3, :cond_5

    :cond_c
    :goto_7
    add-int/2addr v2, v6

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p3, v0}, LN/g;->remove(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_e
    new-instance p0, Lx/b;

    const-string p1, "Invalid cycle detected in schema type configs. \'"

    const-string p2, "\' references itself."

    invoke-static {p1, v0, p2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;
    .locals 7

    const-string v0, "db"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ2/U;->assertNotMainThread()V

    invoke-virtual {p0}, LJ2/U;->assertNotSuspendingTransaction()V

    new-instance v0, LP2/c;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, LP2/c;-><init>(LJ2/U;Lib/c;Lsb/k;ZZ)V

    invoke-static {v0}, LG5/a4;->c(Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, LP2/f;

    invoke-direct {v0, p0, v1, p2}, LP2/f;-><init>(LJ2/U;Lib/c;Lsb/k;)V

    new-instance v6, LJ2/W;

    invoke-direct {v6, v0, v1}, LJ2/W;-><init>(LP2/f;Lib/c;)V

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object p2

    sget-object v0, LJ2/j0;->c:LF6/e;

    invoke-interface {p2, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p2

    check-cast p2, LJ2/j0;

    if-eqz p2, :cond_0

    iget-object v1, p2, LJ2/j0;->a:Lib/e;

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1, v6, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object v3

    new-instance p2, LNc/k;

    invoke-static {p1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {p2}, LNc/k;->q()V

    :try_start_0
    invoke-virtual {p0}, LJ2/U;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, LG5/e4;

    const/4 v7, 0x1

    move-object v2, v0

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, LG5/e4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to acquire a thread to perform the database transaction."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1}, LNc/k;->i(Ljava/lang/Throwable;)Z

    :goto_0
    invoke-virtual {p2}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, LJ2/U;->getCoroutineScope()LNc/B;

    move-result-object v0

    invoke-interface {v0}, LNc/B;->v()Lib/h;

    move-result-object v0

    new-instance v2, LP2/i;

    invoke-direct {v2, p0, v1, p2}, LP2/i;-><init>(LJ2/U;Lib/c;Lsb/k;)V

    invoke-static {v0, v2, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v7, p3

    move/from16 v4, p4

    instance-of v1, v0, LP2/k;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, LP2/k;

    iget v2, v1, LP2/k;->f:I

    const/high16 v3, -0x80000000

    and-int v5, v2, v3

    if-eqz v5, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, LP2/k;->f:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, LP2/k;

    invoke-direct {v1, v0}, Lkb/c;-><init>(Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, LP2/k;->e:Ljava/lang/Object;

    sget-object v9, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v8, LP2/k;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v10, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v1, v8, LP2/k;->d:Z

    iget-boolean v3, v8, LP2/k;->c:Z

    iget-object v4, v8, LP2/k;->b:Lsb/k;

    iget-object v5, v8, LP2/k;->a:LJ2/U;

    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    move v15, v1

    move v14, v3

    move-object v13, v4

    move-object v11, v5

    goto :goto_4

    :cond_3
    :goto_2
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, LJ2/U;->isOpenInternal()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, LJ2/U;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v11, LP2/m;

    const/4 v2, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, LP2/m;-><init>(LJ2/U;Lib/c;Lsb/k;ZZ)V

    iput v10, v8, LP2/k;->f:I

    invoke-virtual {v6, v7, v11, v8}, LJ2/U;->useConnection$room_runtime_release(ZLsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    goto :goto_5

    :cond_5
    :goto_3
    move-object v9, v0

    goto :goto_5

    :cond_6
    iput-object v6, v8, LP2/k;->a:LJ2/U;

    move-object/from16 v0, p2

    iput-object v0, v8, LP2/k;->b:Lsb/k;

    iput-boolean v7, v8, LP2/k;->c:Z

    iput-boolean v4, v8, LP2/k;->d:Z

    iput v3, v8, LP2/k;->f:I

    invoke-static {v6, v4, v8}, LA/b;->e(LJ2/U;ZLkb/c;)Lib/h;

    move-result-object v1

    if-ne v1, v9, :cond_7

    goto :goto_5

    :cond_7
    move-object v13, v0

    move-object v0, v1

    move v15, v4

    move-object v11, v6

    move v14, v7

    :goto_4
    check-cast v0, Lib/h;

    new-instance v1, LP2/j;

    const/4 v12, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, LP2/j;-><init>(LJ2/U;Lib/c;Lsb/k;ZZ)V

    const/4 v3, 0x0

    iput-object v3, v8, LP2/k;->a:LJ2/U;

    iput-object v3, v8, LP2/k;->b:Lsb/k;

    iput v2, v8, LP2/k;->f:I

    invoke-static {v0, v1, v8}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    :goto_5
    return-object v9
.end method

.method public static final j(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".preferences_pb"

    invoke-static {v0, p1}, Ltb/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LOd/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;
    .locals 5

    const-string v0, "db"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LJ2/U;->query(LT2/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p2, :cond_8

    instance-of p1, p0, Landroid/database/AbstractWindowedCursor;

    if-eqz p1, :cond_8

    move-object p1, p0

    check-cast p1, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p1}, Landroid/database/AbstractCursor;->getCount()I

    move-result p2

    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ge p1, p2, :cond_8

    const-string p1, "c"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :cond_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :cond_4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_3

    :cond_5
    aput-object v0, p2, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_7
    invoke-static {p0, v0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object p0, p1

    goto :goto_5

    :goto_4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    :goto_5
    return-object p0
.end method
