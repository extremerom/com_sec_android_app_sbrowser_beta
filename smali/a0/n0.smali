.class public final La0/n0;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:La0/p0;

.field public final synthetic b:LN/v;

.field public final synthetic c:LN/v;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:LN/v;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:LN/v;

.field public final synthetic i:Ljava/util/Set;


# direct methods
.method public constructor <init>(La0/p0;LN/v;LN/v;Ljava/util/List;Ljava/util/List;LN/v;Ljava/util/List;LN/v;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, La0/n0;->a:La0/p0;

    iput-object p2, p0, La0/n0;->b:LN/v;

    iput-object p3, p0, La0/n0;->c:LN/v;

    iput-object p4, p0, La0/n0;->d:Ljava/util/List;

    iput-object p5, p0, La0/n0;->e:Ljava/util/List;

    iput-object p6, p0, La0/n0;->f:LN/v;

    iput-object p7, p0, La0/n0;->g:Ljava/util/List;

    iput-object p8, p0, La0/n0;->h:LN/v;

    iput-object p9, p0, La0/n0;->i:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, v0, La0/n0;->a:La0/p0;

    iget-object v4, v3, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v3}, La0/p0;->u()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    monitor-exit v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const-string v3, "Recomposer:animation"

    iget-object v6, v0, La0/n0;->a:La0/p0;

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v3, v6, La0/p0;->b:La0/g;

    invoke-virtual {v3, v1, v2}, La0/g;->d(J)V

    sget-object v1, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/b;

    iget-object v2, v2, Lk0/c;->h:LN/v;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LN/v;->h()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_3
    monitor-exit v1

    if-eqz v2, :cond_1

    invoke-static {}, Lk0/n;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_2
    :goto_2
    const-string v1, "Recomposer:recompose"

    iget-object v6, v0, La0/n0;->a:La0/p0;

    iget-object v12, v0, La0/n0;->b:LN/v;

    iget-object v13, v0, La0/n0;->c:LN/v;

    iget-object v2, v0, La0/n0;->d:Ljava/util/List;

    iget-object v8, v0, La0/n0;->e:Ljava/util/List;

    iget-object v3, v0, La0/n0;->f:LN/v;

    iget-object v14, v0, La0/n0;->g:Ljava/util/List;

    iget-object v15, v0, La0/n0;->h:LN/v;

    iget-object v0, v0, La0/n0;->i:Ljava/util/Set;

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_5
    invoke-static {v6}, La0/p0;->q(La0/p0;)Z

    iget-object v1, v6, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v7, v6, La0/p0;->i:Lc0/d;

    iget v9, v7, Lc0/d;->c:I

    if-lez v9, :cond_4

    iget-object v7, v7, Lc0/d;->a:[Ljava/lang/Object;

    move v10, v4

    :goto_3
    aget-object v11, v7, v10

    check-cast v11, La0/u;

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    if-lt v10, v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_29

    :cond_4
    :goto_4
    iget-object v5, v6, La0/p0;->i:Lc0/d;

    invoke-virtual {v5}, Lc0/d;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v1

    invoke-virtual {v12}, LN/v;->b()V

    invoke-virtual {v13}, LN/v;->b()V

    :goto_5
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_5

    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move v1, v4

    move-object/from16 v23, v8

    goto/16 :goto_1b

    :cond_6
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_9

    iget-wide v9, v6, La0/p0;->a:J

    const-wide/16 v16, 0x1

    add-long v9, v9, v16

    iput-wide v9, v6, La0/p0;->a:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    move v9, v4

    :goto_6
    if-ge v9, v0, :cond_7

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La0/u;

    invoke-virtual {v15, v10}, LN/v;->a(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    move v9, v4

    :goto_7
    if-ge v9, v0, :cond_8

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La0/u;

    invoke-virtual {v10}, La0/u;->e()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    :try_start_9
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    goto/16 :goto_2a

    :goto_8
    :try_start_a
    invoke-static {v6, v0, v4, v1}, La0/p0;->A(La0/p0;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, La0/o0;->f(La0/p0;Ljava/util/List;Ljava/util/List;Ljava/util/List;LN/v;LN/v;LN/v;LN/v;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_27

    :goto_a
    :try_start_c
    invoke-interface {v14}, Ljava/util/List;->clear()V

    throw v0

    :cond_9
    :goto_b
    invoke-virtual {v3}, LN/v;->h()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const-wide/16 v16, 0xff

    const/4 v11, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v0, :cond_f

    :try_start_d
    invoke-virtual {v15, v3}, LN/v;->i(LN/v;)V

    iget-object v0, v3, LN/v;->b:[Ljava/lang/Object;

    iget-object v1, v3, LN/v;->a:[J

    array-length v4, v1

    sub-int/2addr v4, v5

    if-ltz v4, :cond_d

    const/4 v5, 0x0

    :goto_c
    aget-wide v9, v1, v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object/from16 v23, v8

    not-long v7, v9

    shl-long/2addr v7, v11

    and-long/2addr v7, v9

    and-long v7, v7, v18

    cmp-long v7, v7, v18

    if-eqz v7, :cond_c

    sub-int v7, v5, v4

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v7, :cond_b

    and-long v24, v9, v16

    const-wide/16 v21, 0x80

    cmp-long v24, v24, v21

    if-gez v24, :cond_a

    shl-int/lit8 v24, v5, 0x3

    add-int v24, v24, v8

    :try_start_e
    aget-object v24, v0, v24

    check-cast v24, La0/u;

    invoke-virtual/range {v24 .. v24}, La0/u;->g()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_a
    const/16 v11, 0x8

    goto :goto_f

    :goto_e
    const/4 v1, 0x0

    const/4 v4, 0x6

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_e

    :goto_f
    shr-long/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x7

    goto :goto_d

    :cond_b
    const/16 v11, 0x8

    if-ne v7, v11, :cond_e

    :cond_c
    if-eq v5, v4, :cond_e

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v23

    const/4 v11, 0x7

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v23, v8

    goto :goto_e

    :cond_d
    move-object/from16 v23, v8

    :cond_e
    :try_start_f
    invoke-virtual {v3}, LN/v;->b()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_12

    :goto_10
    :try_start_10
    invoke-static {v6, v0, v1, v4}, La0/p0;->A(La0/p0;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object/from16 v8, v23

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, La0/o0;->f(La0/p0;Ljava/util/List;Ljava/util/List;Ljava/util/List;LN/v;LN/v;LN/v;LN/v;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    invoke-virtual {v3}, LN/v;->b()V

    goto/16 :goto_9

    :goto_11
    invoke-virtual {v3}, LN/v;->b()V

    throw v0

    :cond_f
    move-object/from16 v23, v8

    :goto_12
    invoke-virtual {v15}, LN/v;->h()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v0, :cond_14

    :try_start_12
    iget-object v0, v15, LN/v;->b:[Ljava/lang/Object;

    iget-object v1, v15, LN/v;->a:[J

    array-length v4, v1

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ltz v4, :cond_13

    const/4 v5, 0x0

    :goto_13
    aget-wide v7, v1, v5

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    and-long v9, v9, v18

    cmp-long v9, v9, v18

    if-eqz v9, :cond_12

    sub-int v9, v5, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move-wide/from16 v24, v7

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v9, :cond_11

    and-long v26, v24, v16

    const-wide/16 v20, 0x80

    cmp-long v8, v26, v20

    if-gez v8, :cond_10

    shl-int/lit8 v8, v5, 0x3

    add-int/2addr v8, v7

    aget-object v8, v0, v8

    check-cast v8, La0/u;

    invoke-virtual {v8}, La0/u;->h()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :cond_10
    const/16 v8, 0x8

    goto :goto_16

    :goto_15
    const/4 v1, 0x0

    const/4 v4, 0x6

    goto :goto_18

    :catchall_6
    move-exception v0

    goto :goto_19

    :catch_3
    move-exception v0

    goto :goto_15

    :goto_16
    shr-long v24, v24, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_11
    const/16 v8, 0x8

    const-wide/16 v20, 0x80

    if-ne v9, v8, :cond_13

    goto :goto_17

    :cond_12
    const/16 v8, 0x8

    const-wide/16 v20, 0x80

    :goto_17
    if-eq v5, v4, :cond_13

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_13
    :try_start_13
    invoke-virtual {v15}, LN/v;->b()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_1a

    :goto_18
    :try_start_14
    invoke-static {v6, v0, v1, v4}, La0/p0;->A(La0/p0;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object/from16 v8, v23

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, La0/o0;->f(La0/p0;Ljava/util/List;Ljava/util/List;Ljava/util/List;LN/v;LN/v;LN/v;LN/v;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    invoke-virtual {v15}, LN/v;->b()V

    goto/16 :goto_9

    :goto_19
    invoke-virtual {v15}, LN/v;->b()V

    throw v0

    :cond_14
    :goto_1a
    iget-object v1, v6, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    invoke-virtual {v6}, La0/p0;->t()LNc/j;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    monitor-exit v1

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v0

    invoke-virtual {v0}, Lk0/h;->m()V

    invoke-virtual {v13}, LN/v;->b()V

    invoke-virtual {v12}, LN/v;->b()V

    const/4 v0, 0x0

    iput-object v0, v6, La0/p0;->o:Ljava/util/LinkedHashSet;

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :goto_1b
    :try_start_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_1c
    if-ge v5, v4, :cond_16

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La0/u;

    invoke-static {v6, v7, v12}, La0/p0;->p(La0/p0;La0/u;LN/v;)La0/u;

    move-result-object v8

    if-eqz v8, :cond_15

    move-object v9, v14

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :catchall_8
    move-exception v0

    goto/16 :goto_28

    :catch_4
    move-exception v0

    move-object/from16 v4, v23

    const/4 v1, 0x1

    const/4 v5, 0x2

    goto/16 :goto_26

    :cond_15
    :goto_1d
    invoke-virtual {v13, v7}, LN/v;->a(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_16
    :try_start_19
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v12}, LN/v;->h()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v6, La0/p0;->i:Lc0/d;

    invoke-virtual {v4}, Lc0/d;->m()Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_17
    iget-object v4, v6, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    invoke-virtual {v6}, La0/p0;->w()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v8, v1

    :goto_1e
    if-ge v8, v7, :cond_19

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La0/u;

    invoke-virtual {v13, v9}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual {v9, v0}, La0/u;->t(Ljava/util/Set;)Z

    move-result v10

    if-eqz v10, :cond_18

    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :catchall_9
    move-exception v0

    goto/16 :goto_25

    :cond_18
    :goto_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_19
    iget-object v5, v6, La0/p0;->i:Lc0/d;

    iget v7, v5, Lc0/d;->c:I

    move v8, v1

    move v9, v8

    :goto_20
    if-ge v8, v7, :cond_1c

    iget-object v10, v5, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v10, v10, v8

    check-cast v10, La0/u;

    invoke-virtual {v13, v10}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    move-object v11, v2

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_1a
    if-lez v9, :cond_1b

    iget-object v10, v5, Lc0/d;->a:[Ljava/lang/Object;

    sub-int v11, v8, v9

    aget-object v16, v10, v8

    aput-object v16, v10, v11

    :cond_1b
    :goto_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_1c
    iget-object v8, v5, Lc0/d;->a:[Ljava/lang/Object;

    sub-int v9, v7, v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v9, v5, Lc0/d;->c:I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    monitor-exit v4

    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-eqz v4, :cond_20

    move-object/from16 v4, v23

    :try_start_1c
    invoke-static {v4, v6}, La0/o0;->g(Ljava/util/List;La0/p0;)V

    :goto_22
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v6, v4, v12}, La0/p0;->y(Ljava/util/List;LN/v;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, LN/v;->d(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v3, LN/v;->b:[Ljava/lang/Object;

    aput-object v7, v9, v8

    goto :goto_23

    :cond_1e
    invoke-static {v4, v6}, La0/o0;->g(Ljava/util/List;La0/p0;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    goto :goto_22

    :catch_5
    move-exception v0

    const/4 v1, 0x1

    const/4 v5, 0x2

    goto :goto_24

    :cond_1f
    move-object v8, v4

    move v4, v1

    goto/16 :goto_5

    :goto_24
    :try_start_1d
    invoke-static {v6, v0, v1, v5}, La0/p0;->A(La0/p0;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v8, v4

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, La0/o0;->f(La0/p0;Ljava/util/List;Ljava/util/List;Ljava/util/List;LN/v;LN/v;LN/v;LN/v;)V

    goto/16 :goto_9

    :cond_20
    move v4, v1

    move-object/from16 v8, v23

    goto/16 :goto_5

    :goto_25
    monitor-exit v4

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :goto_26
    :try_start_1e
    invoke-static {v6, v0, v1, v5}, La0/p0;->A(La0/p0;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v8, v4

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, La0/o0;->f(La0/p0;Ljava/util/List;Ljava/util/List;Ljava/util/List;LN/v;LN/v;LN/v;LN/v;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    goto/16 :goto_9

    :goto_27
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :goto_28
    :try_start_20
    invoke-interface {v2}, Ljava/util/List;->clear()V

    throw v0

    :goto_29
    monitor-exit v1

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    :goto_2a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_a
    move-exception v0

    move-object v1, v0

    monitor-exit v4

    throw v1
.end method
