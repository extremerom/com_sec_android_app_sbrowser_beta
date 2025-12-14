.class public abstract LG5/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lc2/U;Landroid/content/Context;Lc2/m;Lc2/Q;LA4/a;Lkb/c;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v1, p5

    instance-of v2, v1, Lc2/F;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lc2/F;

    iget v3, v2, Lc2/F;->j:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lc2/F;->j:I

    :goto_0
    move-object v12, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lc2/F;

    invoke-direct {v2, v1}, Lkb/c;-><init>(Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object v1, v12, Lc2/F;->i:Ljava/lang/Object;

    sget-object v13, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v12, Lc2/F;->j:I

    const/4 v14, 0x2

    const-string v9, "-worker resource"

    const-string v8, "Clear "

    const-string v7, " "

    const-string v6, "msg"

    const-string v5, "GWT:SessionWorker"

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v14, :cond_1

    iget-object v0, v12, Lc2/F;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, La0/r;

    iget-object v0, v12, Lc2/F;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, La0/p0;

    iget-object v0, v12, Lc2/F;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LNc/j0;

    iget-object v0, v12, Lc2/F;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lc2/j;

    iget-object v0, v12, Lc2/F;->a:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lc2/m;

    :try_start_0
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v31, v9

    move-object v9, v5

    move-object v5, v8

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, v31

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v12, Lc2/F;->h:La0/u;

    iget-object v3, v12, Lc2/F;->g:La0/p0;

    iget-object v4, v12, Lc2/F;->f:LNc/C0;

    iget-object v0, v12, Lc2/F;->e:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lc2/j;

    iget-object v0, v12, Lc2/F;->d:Ljava/lang/Object;

    check-cast v0, Lc2/Q;

    iget-object v11, v12, Lc2/F;->c:Ljava/lang/Object;

    check-cast v11, Lc2/m;

    iget-object v14, v12, Lc2/F;->b:Ljava/lang/Object;

    check-cast v14, Landroid/content/Context;

    iget-object v15, v12, Lc2/F;->a:Ljava/lang/Object;

    check-cast v15, Lc2/U;

    :try_start_1
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object v1, v10

    move-object v6, v15

    move-object v7, v0

    goto/16 :goto_3

    :cond_3
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, v11, Lc2/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting up composition for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lc2/j;

    invoke-direct {v14, v0}, Lc2/j;-><init>(LNc/B;)V

    new-instance v1, Lc2/N;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkb/i;-><init>(ILib/c;)V

    const/4 v15, 0x3

    invoke-static {v0, v3, v3, v1, v15}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lc2/m;->b()Lz1/Q0;

    move-result-object v3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v1

    new-instance v4, Lc2/E;

    invoke-direct {v4, v0, v11, v10}, Lc2/E;-><init>(Lc2/U;Lc2/m;Landroid/content/Context;)V

    invoke-virtual/range {p4 .. p4}, LA4/a;->invoke()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, LNc/j0;

    move-object/from16 v17, v1

    iget-object v1, v0, Lc2/U;->a:LNc/B;

    move-object/from16 v18, v2

    invoke-interface {v1}, LNc/B;->v()Lib/h;

    move-result-object v2

    move-object/from16 v19, v5

    sget-object v5, LNc/i0;->a:LNc/i0;

    invoke-interface {v2, v5}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v2

    check-cast v2, LNc/j0;

    if-eqz v2, :cond_4

    new-instance v5, LB0/a;

    move-object/from16 v20, v6

    const/16 v6, 0x14

    invoke-direct {v5, v6, v15}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v5}, LNc/j0;->q(Lsb/k;)LNc/P;

    goto :goto_2

    :cond_4
    move-object/from16 v20, v6

    :goto_2
    invoke-interface {v1}, LNc/B;->v()Lib/h;

    move-result-object v1

    invoke-interface {v1, v15}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v1

    invoke-interface {v1, v4}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v1

    new-instance v15, La0/p0;

    invoke-direct {v15, v1}, La0/p0;-><init>(Lib/h;)V

    new-instance v1, Lx1/b;

    invoke-direct {v1, v3}, Lx1/b;-><init>(Lx1/n;)V

    new-instance v6, La0/u;

    invoke-direct {v6, v15, v1}, La0/u;-><init>(La0/s;LJ2/i0;)V

    :try_start_2
    new-instance v5, Lc2/G;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const/16 v21, 0x0

    move-object/from16 v4, v17

    move-object v1, v5

    move-object/from16 v22, v18

    move-object v2, v6

    move-object/from16 v17, v3

    move-object/from16 v3, p2

    move-object/from16 p4, v4

    move-object/from16 v4, p1

    move-object/from16 v24, v5

    move-object/from16 v23, v19

    move-object v5, v15

    move-object/from16 v26, v6

    move-object/from16 v25, v20

    move-object/from16 v6, p0

    move-object/from16 v27, v7

    move-object/from16 v7, v21

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lc2/G;-><init>(La0/u;Lc2/m;Landroid/content/Context;La0/p0;Lc2/U;Lib/c;)V

    move-object/from16 v3, v24

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v14, v2, v3, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    new-instance v7, Lc2/J;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const/16 v16, 0x0

    move-object v1, v7

    move-object v2, v15

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, v17

    move-object/from16 v28, v7

    move-object/from16 v7, p0

    move-object/from16 v29, v8

    move-object/from16 v8, p3

    move-object/from16 v30, v9

    move-object/from16 v9, v16

    :try_start_4
    invoke-direct/range {v1 .. v9}, Lc2/J;-><init>(La0/p0;LQc/A0;Lc2/m;Landroid/content/Context;Lx1/n;Lc2/U;Lc2/Q;Lib/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v3, v28

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_5
    invoke-static {v0, v1, v1, v3, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    new-instance v2, Lc2/K;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v3, 0x2

    :try_start_6
    invoke-direct {v2, v3, v1}, Lkb/i;-><init>(ILib/c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    iput-object v0, v12, Lc2/F;->a:Ljava/lang/Object;

    iput-object v10, v12, Lc2/F;->b:Ljava/lang/Object;

    iput-object v11, v12, Lc2/F;->c:Ljava/lang/Object;

    move-object/from16 v1, p3

    iput-object v1, v12, Lc2/F;->d:Ljava/lang/Object;

    iput-object v14, v12, Lc2/F;->e:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v3, v22

    :try_start_8
    iput-object v3, v12, Lc2/F;->f:LNc/C0;

    iput-object v15, v12, Lc2/F;->g:La0/p0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v4, v26

    :try_start_9
    iput-object v4, v12, Lc2/F;->h:La0/u;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v5, 0x1

    :try_start_a
    iput v5, v12, Lc2/F;->j:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v5, p4

    :try_start_b
    invoke-static {v5, v2, v12}, LQc/n0;->o(LQc/h;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-ne v2, v13, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v6, v0

    move-object v7, v1

    move-object v2, v4

    move-object v1, v14

    move-object v4, v3

    move-object v14, v10

    move-object v3, v15

    :goto_3
    :try_start_c
    new-instance v0, LQ/a;

    const/4 v10, 0x3

    move-object v5, v0

    move-object v8, v11

    move-object v9, v1

    invoke-direct/range {v5 .. v10}, LQ/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v11, v12, Lc2/F;->a:Ljava/lang/Object;

    iput-object v1, v12, Lc2/F;->b:Ljava/lang/Object;

    iput-object v4, v12, Lc2/F;->c:Ljava/lang/Object;

    iput-object v3, v12, Lc2/F;->d:Ljava/lang/Object;

    iput-object v2, v12, Lc2/F;->e:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v12, Lc2/F;->f:LNc/C0;

    iput-object v5, v12, Lc2/F;->g:La0/p0;

    iput-object v5, v12, Lc2/F;->h:La0/u;

    const/4 v5, 0x2

    iput v5, v12, Lc2/F;->j:I

    invoke-virtual {v11, v14, v0, v12}, Lc2/m;->h(Landroid/content/Context;Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-ne v0, v13, :cond_6

    goto :goto_5

    :cond_6
    move-object v10, v1

    :goto_4
    iget-object v0, v11, Lc2/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v5, v29

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v30

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v25

    invoke-static {v0, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v27

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v23

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, La0/r;->a()V

    invoke-virtual {v10}, Lc2/j;->g()V

    const/4 v1, 0x0

    invoke-interface {v4, v1}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {v3}, La0/p0;->s()V

    sget-object v13, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object v13

    :goto_6
    move-object v10, v1

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v9, v23

    move-object/from16 v7, v25

    move-object/from16 v8, v27

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v9, v23

    move-object/from16 v7, v25

    goto :goto_8

    :goto_7
    move-object v2, v4

    move-object v10, v14

    move-object v4, v3

    move-object v3, v15

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object/from16 v9, v23

    move-object/from16 v7, v25

    :goto_8
    move-object/from16 v8, v27

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    goto :goto_7

    :catchall_4
    move-exception v0

    :goto_9
    move-object/from16 v9, v23

    move-object/from16 v7, v25

    move-object/from16 v4, v26

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v9, v23

    move-object/from16 v7, v25

    move-object/from16 v4, v26

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v3, v22

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v5, v8

    move-object v6, v9

    move-object/from16 v3, v22

    move-object/from16 v9, v23

    move-object/from16 v7, v25

    move-object/from16 v4, v26

    move-object/from16 v8, v27

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-object/from16 v3, v18

    move-object/from16 v9, v19

    move-object v8, v7

    move-object/from16 v7, v20

    goto :goto_7

    :goto_a
    iget-object v1, v11, Lc2/m;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Le7/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, La0/r;->a()V

    invoke-virtual {v10}, Lc2/j;->g()V

    const/4 v1, 0x0

    invoke-interface {v4, v1}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {v3}, La0/p0;->s()V

    throw v0
.end method

.method public static final b(LAb/d;)LAb/c;
    .locals 5

    instance-of v0, p0, LAb/c;

    if-eqz v0, :cond_0

    check-cast p0, LAb/c;

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, LAb/v;

    if-eqz v0, :cond_6

    check-cast p0, LAb/v;

    check-cast p0, LDb/x0;

    sget-object v0, LDb/x0;->d:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/x0;->b:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ltb/l;

    const-string v4, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl"

    invoke-static {v3, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, LDb/v0;

    iget-object v3, v3, LDb/v0;->a:Lyc/w;

    invoke-virtual {v3}, Lyc/w;->F0()Lyc/L;

    move-result-object v3

    invoke-interface {v3}, Lyc/L;->c()LJb/i;

    move-result-object v3

    instance-of v4, v3, LJb/f;

    if-eqz v4, :cond_2

    move-object v2, v3

    check-cast v2, LJb/f;

    :cond_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, LJb/f;->d()LJb/g;

    move-result-object v3

    sget-object v4, LJb/g;->INTERFACE:LJb/g;

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, LJb/f;->d()LJb/g;

    move-result-object v2

    sget-object v3, LJb/g;->ANNOTATION_CLASS:LJb/g;

    if-eq v2, v3, :cond_1

    move-object v2, v1

    :cond_3
    check-cast v2, Ltb/l;

    if-nez v2, :cond_4

    invoke-static {p0}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ltb/l;

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, LG5/z;->c(Ltb/l;)LAb/c;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object p0, Ltb/x;->a:Ltb/y;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_6
    new-instance v0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot calculate JVM erasure for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ltb/l;)LAb/c;
    .locals 3

    move-object v0, p0

    check-cast v0, LDb/v0;

    invoke-virtual {v0}, LDb/v0;->c()LAb/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LG5/z;->b(LAb/d;)LAb/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot calculate JVM erasure for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final d(Landroid/view/View;LQ2/f;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b0e1f

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(F)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    float-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-int v2, p0

    int-to-float v3, v2

    sub-float/2addr p0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    int-to-float p0, v2

    div-float/2addr p0, v1

    if-lez v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
