.class public final LPc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/N0;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:LNc/k;

.field public final synthetic c:LPc/i;


# direct methods
.method public constructor <init>(LPc/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc/b;->c:LPc/i;

    sget-object p1, LPc/k;->p:LQ6/i;

    iput-object p1, p0, LPc/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LUc/x;I)V
    .locals 0

    iget-object p0, p0, LPc/b;->b:LNc/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, LNc/k;->a(LUc/x;I)V

    :cond_0
    return-void
.end method

.method public final b(Lkb/c;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, LPc/i;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v8, v0, LPc/b;->c:LPc/i;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LPc/q;

    :goto_0
    invoke-virtual {v8}, LPc/i;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, LPc/k;->l:LQ6/i;

    iput-object v1, v0, LPc/b;->a:Ljava/lang/Object;

    invoke-virtual {v8}, LPc/i;->s()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_0
    sget v1, LUc/y;->a:I

    throw v0

    :cond_1
    sget-object v2, LPc/i;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v2, LPc/k;->b:I

    int-to-long v2, v2

    div-long v4, v9, v2

    rem-long v2, v9, v2

    long-to-int v11, v2

    iget-wide v2, v1, LUc/x;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {v8, v4, v5, v1}, LPc/i;->q(JLPc/q;)LPc/q;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v12, v2

    goto :goto_1

    :cond_3
    move-object v12, v1

    :goto_1
    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v12

    move v4, v11

    move-wide v5, v9

    invoke-virtual/range {v2 .. v7}, LPc/i;->J(LPc/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, LPc/k;->m:LQ6/i;

    if-eq v1, v7, :cond_14

    sget-object v13, LPc/k;->o:LQ6/i;

    if-ne v1, v13, :cond_5

    invoke-virtual {v8}, LPc/i;->v()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_4

    invoke-virtual {v12}, LUc/d;->a()V

    :cond_4
    move-object v1, v12

    goto :goto_0

    :cond_5
    sget-object v2, LPc/k;->n:LQ6/i;

    if-ne v1, v2, :cond_13

    iget-object v14, v0, LPc/b;->c:LPc/i;

    invoke-static/range {p1 .. p1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object v1

    invoke-static {v1}, LNc/E;->r(Lib/c;)LNc/k;

    move-result-object v15

    :try_start_0
    iput-object v15, v0, LPc/b;->b:LNc/k;

    move-object v1, v14

    move-object v2, v12

    move v3, v11

    move-wide v4, v9

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, LPc/i;->J(LPc/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_6

    invoke-virtual {v0, v12, v11}, LPc/b;->a(LUc/x;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_6
    const/4 v7, 0x0

    iget-object v11, v15, LNc/k;->e:Lib/h;

    iget-object v6, v14, LPc/i;->b:Lsb/k;

    if-ne v3, v13, :cond_11

    :try_start_1
    invoke-virtual {v14}, LPc/i;->v()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_7

    invoke-virtual {v12}, LUc/d;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_7
    :goto_2
    sget-object v1, LPc/i;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LPc/q;

    :goto_3
    invoke-virtual {v14}, LPc/i;->y()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, v0, LPc/b;->b:LNc/k;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v7, v0, LPc/b;->b:LNc/k;

    sget-object v2, LPc/k;->l:LQ6/i;

    iput-object v2, v0, LPc/b;->a:Ljava/lang/Object;

    invoke-virtual {v8}, LPc/i;->s()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_8
    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    invoke-virtual {v1, v0}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    sget-object v2, LPc/i;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v14}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v2, LPc/k;->b:I

    int-to-long v2, v2

    div-long v4, v9, v2

    rem-long v2, v9, v2

    long-to-int v12, v2

    iget-wide v2, v1, LUc/x;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    invoke-virtual {v14, v4, v5, v1}, LPc/i;->q(JLPc/q;)LPc/q;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    move-object v13, v2

    goto :goto_4

    :cond_b
    move-object v13, v1

    :goto_4
    move-object v1, v14

    move-object v2, v13

    move v3, v12

    move-wide v4, v9

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, LPc/i;->J(LPc/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LPc/k;->m:LQ6/i;

    if-ne v1, v2, :cond_c

    invoke-virtual {v0, v13, v12}, LPc/b;->a(LUc/x;I)V

    goto :goto_5

    :cond_c
    sget-object v2, LPc/k;->o:LQ6/i;

    if-ne v1, v2, :cond_e

    invoke-virtual {v14}, LPc/i;->v()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_d

    invoke-virtual {v13}, LUc/d;->a()V

    :cond_d
    move-object v1, v13

    move-object/from16 v6, v18

    goto :goto_3

    :cond_e
    sget-object v2, LPc/k;->n:LQ6/i;

    if-eq v1, v2, :cond_10

    invoke-virtual {v13}, LUc/d;->a()V

    iput-object v1, v0, LPc/b;->a:Ljava/lang/Object;

    iput-object v7, v0, LPc/b;->b:LNc/k;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz v18, :cond_f

    new-instance v7, LPc/e;

    const/16 v17, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move-object/from16 v19, v1

    move-object/from16 v20, v11

    invoke-direct/range {v16 .. v21}, LPc/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :cond_f
    invoke-virtual {v15, v0, v7}, LNc/k;->d(Ljava/lang/Object;Lsb/k;)V

    goto :goto_5

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v18, v6

    invoke-virtual {v12}, LUc/d;->a()V

    iput-object v3, v0, LPc/b;->a:Ljava/lang/Object;

    iput-object v7, v0, LPc/b;->b:LNc/k;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz v18, :cond_12

    new-instance v7, LPc/e;

    const/4 v1, 0x4

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v2, v18

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, LPc/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    :cond_12
    invoke-virtual {v15, v6, v7}, LNc/k;->d(Ljava/lang/Object;Lsb/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {v15}, LNc/k;->p()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object v0

    :goto_6
    invoke-virtual {v15}, LNc/k;->z()V

    throw v0

    :cond_13
    invoke-virtual {v12}, LUc/d;->a()V

    iput-object v1, v0, LPc/b;->a:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LPc/b;->a:Ljava/lang/Object;

    sget-object v1, LPc/k;->p:LQ6/i;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, LPc/b;->a:Ljava/lang/Object;

    sget-object v1, LPc/k;->l:LQ6/i;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, LPc/b;->c:LPc/i;

    invoke-virtual {p0}, LPc/i;->t()Ljava/lang/Throwable;

    move-result-object p0

    sget v0, LUc/y;->a:I

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "`hasNext()` has not been invoked"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
