.class public abstract LG5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/jni_zero/a;


# direct methods
.method public static a()V
    .locals 2

    sget-object v0, LG5/m;->a:Lorg/jni_zero/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/jni_zero/a;->areNativeMethodsReady()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, LI5/b;

    const-string v1, "Native method called before the native library was ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroidx/activity/i;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    const-class p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/common/util/concurrent/B;

    const-string v0, "firebase-iid-executor"

    invoke-direct {v7, v0}, Lcom/google/common/util/concurrent/B;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method public static d(Ljava/lang/String;LS2/a;)LP2/s;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "connection"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA table_info(`"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, LS2/c;->t0()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v7, 0x0

    const-string v9, "name"

    const/4 v10, 0x0

    if-nez v4, :cond_0

    :try_start_1
    sget-object v4, Lfb/w;->a:Lfb/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    invoke-static {v2, v10}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_0
    move-object v1, v0

    goto/16 :goto_e

    :cond_0
    :try_start_2
    invoke-static {v2, v9}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v11, "type"

    invoke-static {v2, v11}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v11

    const-string v12, "notnull"

    invoke-static {v2, v12}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v12

    const-string v13, "pk"

    invoke-static {v2, v13}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v13

    const-string v14, "dflt_value"

    invoke-static {v2, v14}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v14

    new-instance v15, Lgb/f;

    invoke-direct {v15}, Lgb/f;-><init>()V

    :goto_1
    invoke-interface {v2, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v11}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v2, v12}, LS2/c;->getLong(I)J

    move-result-wide v16

    cmp-long v16, v16, v7

    if-eqz v16, :cond_1

    const/16 v19, 0x1

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    :goto_2
    invoke-interface {v2, v13}, LS2/c;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v2, v14}, LS2/c;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v21, v10

    goto :goto_3

    :cond_2
    invoke-interface {v2, v14}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v7

    :goto_3
    new-instance v7, LP2/p;

    const/16 v22, 0x2

    move-object/from16 v16, v7

    move-object/from16 v17, v5

    move/from16 v20, v6

    invoke-direct/range {v16 .. v22}, LP2/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v15, v5, v7}, Lgb/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, LS2/c;->t0()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v15}, Lgb/f;->b()Lgb/f;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    invoke-static {v2, v10}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "PRAGMA foreign_key_list(`"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v2

    :try_start_3
    const-string v5, "id"

    invoke-static {v2, v5}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "seq"

    invoke-static {v2, v6}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "table"

    invoke-static {v2, v7}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "on_delete"

    invoke-static {v2, v8}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v11, "on_update"

    invoke-static {v2, v11}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v11

    invoke-static {v2}, LP2/o;->a(LS2/c;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v2}, LS2/c;->reset()V

    new-instance v13, Lgb/h;

    invoke-direct {v13}, Lgb/h;-><init>()V

    :goto_5
    invoke-interface {v2}, LS2/c;->t0()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v2, v6}, LS2/c;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_3

    goto :goto_5

    :cond_3
    invoke-interface {v2, v5}, LS2/c;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v12

    check-cast v19, Ljava/lang/Iterable;

    move/from16 v20, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v22, v12

    move-object v12, v6

    check-cast v12, LP2/n;

    iget v12, v12, LP2/n;->a:I

    if-ne v12, v14, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v6, v21

    move-object/from16 v12, v22

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d

    :cond_5
    move/from16 v21, v6

    move-object/from16 v22, v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LP2/n;

    iget-object v12, v6, LP2/n;->c:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, LP2/n;->d:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    new-instance v5, LP2/q;

    invoke-interface {v2, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v2, v8}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v25

    invoke-interface {v2, v11}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v23, v5

    move-object/from16 v27, v15

    move-object/from16 v28, v10

    invoke-direct/range {v23 .. v28}, LP2/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v13, v5}, Lgb/h;->add(Ljava/lang/Object;)Z

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v12, v22

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_7
    invoke-static {v13}, Lfb/F;->a(Lgb/h;)Lgb/h;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    invoke-static {v2, v6}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "PRAGMA index_list(`"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v2

    :try_start_4
    invoke-static {v2, v9}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v6, "origin"

    invoke-static {v2, v6}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "unique"

    invoke-static {v2, v7}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v3, v8, :cond_8

    if-eq v6, v8, :cond_8

    if-ne v7, v8, :cond_9

    :cond_8
    const/4 v6, 0x0

    goto :goto_a

    :cond_9
    new-instance v8, Lgb/h;

    invoke-direct {v8}, Lgb/h;-><init>()V

    :goto_8
    invoke-interface {v2}, LS2/c;->t0()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "c"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {v2, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v7}, LS2/c;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    :goto_9
    invoke-static {v1, v9, v10}, LP2/o;->b(LS2/a;Ljava/lang/String;Z)LP2/r;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v9, :cond_c

    const/4 v10, 0x0

    invoke-static {v2, v10}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    goto :goto_b

    :cond_c
    :try_start_5
    invoke-virtual {v8, v9}, Lgb/h;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :cond_d
    invoke-static {v8}, Lfb/F;->a(Lgb/h;)Lgb/h;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x0

    invoke-static {v2, v3}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-object v10, v1

    goto :goto_b

    :goto_a
    invoke-static {v2, v6}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-object v10, v6

    :goto_b
    new-instance v1, LP2/s;

    invoke-direct {v1, v0, v4, v5, v10}, LP2/s;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    return-object v1

    :goto_c
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3

    :goto_d
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3

    :cond_e
    const-wide/16 v7, 0x0

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    goto/16 :goto_0

    :goto_e
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
.end method
