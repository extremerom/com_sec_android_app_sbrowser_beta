.class public final Lp3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Lg3/j;

.field public final b:Lo3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp3/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg3/j;Lo3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/f;->a:Lg3/j;

    iput-object p2, p0, Lp3/f;->b:Lo3/c;

    return-void
.end method

.method public static a(Lg3/j;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lg3/j;->j:Ljava/util/List;

    sget-object v3, Lp3/f;->c:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg3/j;

    iget-boolean v7, v6, Lg3/j;->k:Z

    if-nez v7, :cond_0

    invoke-static {v6}, Lp3/f;->a(Lg3/j;)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_0

    :cond_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Already enqueued work ids ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lg3/j;->h:Ljava/util/ArrayList;

    const-string v9, ", "

    invoke-static {v9, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Lf3/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v5, v4

    :cond_2
    invoke-static/range {p0 .. p0}, Lg3/j;->i(Lg3/j;)Ljava/util/HashSet;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v6, v0, Lg3/j;->d:Lg3/n;

    iget-object v7, v6, Lg3/n;->b:Lf3/c;

    iget-object v7, v7, Lf3/c;->c:Lf3/w;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v2, :cond_3

    array-length v9, v2

    if-lez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_1
    iget-object v10, v6, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    if-eqz v9, :cond_9

    array-length v11, v2

    move v12, v4

    move v14, v12

    move v15, v14

    const/4 v13, 0x1

    :goto_2
    if-ge v12, v11, :cond_a

    aget-object v4, v2, v12

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Prerequisite "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist; not enqueuing"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    move/from16 v19, v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_16

    :cond_5
    iget-object v1, v1, Lo3/q;->b:Lf3/E;

    sget-object v4, Lf3/E;->SUCCEEDED:Lf3/E;

    if-ne v1, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    and-int/2addr v13, v4

    sget-object v4, Lf3/E;->FAILED:Lf3/E;

    if-ne v1, v4, :cond_7

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    sget-object v4, Lf3/E;->CANCELLED:Lf3/E;

    if-ne v1, v4, :cond_8

    const/4 v1, 0x1

    const/4 v14, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    :goto_5
    add-int/2addr v12, v1

    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_a
    iget-object v1, v0, Lg3/j;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    if-nez v9, :cond_1b

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v4

    invoke-virtual {v4, v1}, Lo3/r;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1b

    sget-object v11, Lf3/k;->APPEND:Lf3/k;

    iget-object v12, v0, Lg3/j;->f:Lf3/k;

    if-eq v12, v11, :cond_f

    sget-object v11, Lf3/k;->APPEND_OR_REPLACE:Lf3/k;

    if-ne v12, v11, :cond_b

    goto :goto_8

    :cond_b
    sget-object v11, Lf3/k;->KEEP:Lf3/k;

    if-ne v12, v11, :cond_d

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo3/o;

    iget-object v12, v12, Lo3/o;->b:Lf3/E;

    move/from16 v17, v9

    sget-object v9, Lf3/E;->ENQUEUED:Lf3/E;

    if-eq v12, v9, :cond_4

    sget-object v9, Lf3/E;->RUNNING:Lf3/E;

    if-ne v12, v9, :cond_c

    goto :goto_3

    :cond_c
    move/from16 v9, v17

    goto :goto_6

    :cond_d
    move/from16 v17, v9

    new-instance v9, Lp3/c;

    const/4 v11, 0x0

    invoke-direct {v9, v6, v1, v11}, Lp3/c;-><init>(Lg3/n;Ljava/lang/String;Z)V

    invoke-virtual {v9}, Lp3/e;->run()V

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo3/o;

    iget-object v11, v11, Lo3/o;->a:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lo3/r;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move/from16 v20, v3

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v9, v17

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_f
    :goto_8
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->b()Lo3/c;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Lo3/o;

    move/from16 v19, v5

    iget-object v5, v4, Lo3/o;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, LJ2/d0;->i:Ljava/util/TreeMap;

    move/from16 v20, v3

    const-string v3, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v21, v6

    const/4 v6, 0x1

    invoke-static {v6, v3}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v3

    if-nez v5, :cond_10

    invoke-virtual {v3, v6}, LJ2/d0;->l(I)V

    goto :goto_a

    :cond_10
    invoke-virtual {v3, v6, v5}, LJ2/d0;->U(ILjava/lang/String;)V

    :goto_a
    iget-object v5, v9, Lo3/c;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, LJ2/U;->assertNotSuspendingTransaction()V

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_11

    const/16 v16, 0x1

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_11
    move/from16 v16, v6

    :goto_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, LJ2/d0;->a()V

    if-nez v16, :cond_15

    sget-object v3, Lf3/E;->SUCCEEDED:Lf3/E;

    iget-object v5, v4, Lo3/o;->b:Lf3/E;

    if-ne v5, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_c

    :cond_12
    move v3, v6

    :goto_c
    and-int/2addr v3, v13

    sget-object v13, Lf3/E;->FAILED:Lf3/E;

    if-ne v5, v13, :cond_13

    const/4 v15, 0x1

    goto :goto_d

    :cond_13
    sget-object v13, Lf3/E;->CANCELLED:Lf3/E;

    if-ne v5, v13, :cond_14

    const/4 v14, 0x1

    :cond_14
    :goto_d
    iget-object v4, v4, Lo3/o;->a:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v3

    :cond_15
    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v6, v21

    goto :goto_9

    :goto_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, LJ2/d0;->a()V

    throw v0

    :cond_16
    move/from16 v20, v3

    move/from16 v19, v5

    move-object/from16 v21, v6

    const/4 v6, 0x0

    sget-object v3, Lf3/k;->APPEND_OR_REPLACE:Lf3/k;

    if-ne v12, v3, :cond_19

    if-nez v14, :cond_17

    if-eqz v15, :cond_19

    :cond_17
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo3/r;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo3/o;

    iget-object v5, v5, Lo3/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lo3/r;->c(Ljava/lang/String;)V

    goto :goto_f

    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move v14, v6

    move v15, v14

    :cond_19
    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    if-lez v3, :cond_1a

    const/4 v9, 0x1

    goto :goto_10

    :cond_1a
    move v9, v6

    :goto_10
    move v3, v6

    goto :goto_11

    :cond_1b
    move/from16 v20, v3

    move/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v17, v9

    const/4 v6, 0x0

    move v3, v6

    move/from16 v9, v17

    :goto_11
    iget-object v4, v0, Lg3/j;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf3/G;

    iget-object v11, v5, Lf3/G;->b:Lo3/q;

    if-eqz v9, :cond_1e

    if-nez v13, :cond_1e

    if-eqz v15, :cond_1c

    sget-object v12, Lf3/E;->FAILED:Lf3/E;

    iput-object v12, v11, Lo3/q;->b:Lf3/E;

    goto :goto_13

    :cond_1c
    if-eqz v14, :cond_1d

    sget-object v12, Lf3/E;->CANCELLED:Lf3/E;

    iput-object v12, v11, Lo3/q;->b:Lf3/E;

    goto :goto_13

    :cond_1d
    sget-object v12, Lf3/E;->BLOCKED:Lf3/E;

    iput-object v12, v11, Lo3/q;->b:Lf3/E;

    goto :goto_13

    :cond_1e
    iput-wide v7, v11, Lo3/q;->n:J

    :goto_13
    iget-object v12, v11, Lo3/q;->b:Lf3/E;

    sget-object v6, Lf3/E;->ENQUEUED:Lf3/E;

    if-ne v12, v6, :cond_1f

    const/4 v3, 0x1

    :cond_1f
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v6

    move/from16 v17, v3

    move-object/from16 v12, v21

    iget-object v3, v12, Lg3/n;->e:Ljava/util/List;

    move-object/from16 v18, v4

    const-string v4, "schedulers"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v6, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v3}, LJ2/U;->beginTransaction()V

    :try_start_1
    iget-object v4, v6, Lo3/r;->b:Lo3/b;

    invoke-virtual {v4, v11}, Lo3/b;->x(Ljava/lang/Object;)V

    invoke-virtual {v3}, LJ2/U;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    if-eqz v9, :cond_20

    array-length v3, v2

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v3, :cond_20

    aget-object v4, v2, v11

    new-instance v6, Lo3/a;

    move-object/from16 v21, v2

    invoke-virtual {v5}, Lf3/G;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v4}, Lo3/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->b()Lo3/c;

    move-result-object v2

    iget-object v4, v2, Lo3/c;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v4}, LJ2/U;->beginTransaction()V

    :try_start_2
    iget-object v2, v2, Lo3/c;->b:Ljava/lang/Object;

    check-cast v2, Lo3/b;

    invoke-virtual {v2, v6}, Lo3/b;->x(Ljava/lang/Object;)V

    invoke-virtual {v4}, LJ2/U;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    const/4 v2, 0x1

    add-int/2addr v11, v2

    move-object/from16 v2, v21

    goto :goto_14

    :catchall_1
    move-exception v0

    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    throw v0

    :cond_20
    move-object/from16 v21, v2

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->i()Lo3/t;

    move-result-object v2

    invoke-virtual {v5}, Lf3/G;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lf3/G;->c:Ljava/util/Set;

    invoke-virtual {v2, v3, v4}, Lo3/t;->l(Ljava/lang/String;Ljava/util/Set;)V

    if-nez v20, :cond_21

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->f()Lo3/l;

    move-result-object v2

    new-instance v3, Lo3/k;

    invoke-virtual {v5}, Lf3/G;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lo3/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lo3/l;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v4}, LJ2/U;->beginTransaction()V

    :try_start_3
    iget-object v2, v2, Lo3/l;->b:Ljava/lang/Object;

    check-cast v2, Lo3/b;

    invoke-virtual {v2, v3}, Lo3/b;->x(Ljava/lang/Object;)V

    invoke-virtual {v4}, LJ2/U;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    goto :goto_15

    :catchall_2
    move-exception v0

    invoke-virtual {v4}, LJ2/U;->endTransaction()V

    throw v0

    :cond_21
    :goto_15
    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v21

    const/4 v6, 0x0

    move-object/from16 v21, v12

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    throw v0

    :cond_22
    move v4, v3

    const/4 v1, 0x1

    :goto_16
    iput-boolean v1, v0, Lg3/j;->k:Z

    or-int v0, v19, v4

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lp3/f;->b:Lo3/c;

    iget-object p0, p0, Lp3/f;->a:Lg3/j;

    const-string v1, "WorkContinuation has cycles ("

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lg3/j;->d:Lg3/n;

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v3}, Lg3/j;->h(Lg3/j;Ljava/util/HashSet;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, v2, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, LJ2/U;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, v2, Lg3/n;->b:Lf3/c;

    invoke-static {v1, v3, p0}, LG5/o;->c(Landroidx/work/impl/WorkDatabase;Lf3/c;Lg3/j;)V

    invoke-static {p0}, Lp3/f;->a(Lg3/j;)Z

    move-result p0

    invoke-virtual {v1}, LJ2/U;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    if-eqz p0, :cond_0

    iget-object p0, v2, Lg3/n;->a:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lp3/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object p0, v2, Lg3/n;->b:Lf3/c;

    iget-object v1, v2, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v2, Lg3/n;->e:Ljava/util/List;

    invoke-static {p0, v1, v2}, Lg3/h;->b(Lf3/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lf3/B;->W:Lf3/A;

    invoke-virtual {v0, p0}, Lo3/c;->h(LG5/a3;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    throw p0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    new-instance v1, Lf3/y;

    invoke-direct {v1, p0}, Lf3/y;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lo3/c;->h(LG5/a3;)V

    :goto_2
    return-void
.end method
