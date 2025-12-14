.class public final LS3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/f;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final a:LS3/l;

.field public final b:LS3/g;

.field public c:I

.field public d:I

.field public e:LQ3/g;

.field public f:Ljava/util/List;

.field public g:I

.field public volatile h:LW3/s;

.field public i:Ljava/io/File;

.field public j:LS3/E;


# direct methods
.method public constructor <init>(LS3/g;LS3/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LS3/D;->d:I

    iput-object p1, p0, LS3/D;->b:LS3/g;

    iput-object p2, p0, LS3/D;->a:LS3/l;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "Failed to find any load path from "

    iget-object v2, v0, LS3/D;->b:LS3/g;

    invoke-virtual {v2}, LS3/g;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget-object v3, v0, LS3/D;->b:LS3/g;

    iget-object v5, v3, LS3/g;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v5}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/h;

    move-result-object v5

    iget-object v6, v3, LS3/g;->d:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, v3, LS3/g;->g:Ljava/lang/Class;

    iget-object v3, v3, LS3/g;->k:Ljava/lang/Class;

    iget-object v8, v5, Lcom/bumptech/glide/h;->h:Lt9/c;

    iget-object v9, v8, Lt9/c;->b:Ljava/lang/Object;

    check-cast v9, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll4/j;

    if-nez v9, :cond_1

    new-instance v9, Ll4/j;

    invoke-direct {v9, v6, v7, v3}, Ll4/j;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iput-object v6, v9, Ll4/j;->a:Ljava/lang/Class;

    iput-object v7, v9, Ll4/j;->b:Ljava/lang/Class;

    iput-object v3, v9, Ll4/j;->c:Ljava/lang/Class;

    :goto_0
    iget-object v11, v8, Lt9/c;->c:Ljava/lang/Object;

    check-cast v11, LN/f;

    monitor-enter v11

    :try_start_0
    iget-object v12, v8, Lt9/c;->c:Ljava/lang/Object;

    check-cast v12, LN/f;

    invoke-virtual {v12, v9}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v8, v8, Lt9/c;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v12, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v5, Lcom/bumptech/glide/h;->a:LW3/w;

    monitor-enter v8

    :try_start_1
    iget-object v9, v8, LW3/w;->a:LW3/z;

    invoke-virtual {v9, v6}, LW3/z;->c(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    iget-object v11, v5, Lcom/bumptech/glide/h;->c:LA7/h;

    invoke-virtual {v11, v9, v7}, LA7/h;->n(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    iget-object v13, v5, Lcom/bumptech/glide/h;->f:LO9/a;

    invoke-virtual {v13, v11, v3}, LO9/a;->T(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v5, v5, Lcom/bumptech/glide/h;->h:Lt9/c;

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v5, Lt9/c;->c:Ljava/lang/Object;

    check-cast v9, LN/f;

    monitor-enter v9

    :try_start_2
    iget-object v5, v5, Lt9/c;->c:Ljava/lang/Object;

    check-cast v5, LN/f;

    new-instance v11, Ll4/j;

    invoke-direct {v11, v6, v7, v3}, Ll4/j;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v5, v11, v8}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-class v2, Ljava/io/File;

    iget-object v3, v0, LS3/D;->b:LS3/g;

    iget-object v3, v3, LS3/g;->k:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v4

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, LS3/D;->b:LS3/g;

    iget-object v1, v1, LS3/g;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, LS3/D;->b:LS3/g;

    iget-object v0, v0, LS3/g;->k:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    iget-object v1, v0, LS3/D;->f:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    iget v5, v0, LS3/D;->g:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_a

    iput-object v10, v0, LS3/D;->h:LW3/s;

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    iget v1, v0, LS3/D;->g:I

    iget-object v2, v0, LS3/D;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v1, v0, LS3/D;->f:Ljava/util/List;

    iget v2, v0, LS3/D;->g:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, LS3/D;->g:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW3/t;

    iget-object v2, v0, LS3/D;->i:Ljava/io/File;

    iget-object v5, v0, LS3/D;->b:LS3/g;

    iget v6, v5, LS3/g;->e:I

    iget v7, v5, LS3/g;->f:I

    iget-object v5, v5, LS3/g;->i:LQ3/k;

    invoke-interface {v1, v2, v6, v7, v5}, LW3/t;->a(Ljava/lang/Object;IILQ3/k;)LW3/s;

    move-result-object v1

    iput-object v1, v0, LS3/D;->h:LW3/s;

    iget-object v1, v0, LS3/D;->h:LW3/s;

    if-eqz v1, :cond_8

    iget-object v1, v0, LS3/D;->b:LS3/g;

    iget-object v2, v0, LS3/D;->h:LW3/s;

    iget-object v2, v2, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, LS3/g;->c(Ljava/lang/Class;)LS3/A;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, LS3/D;->h:LW3/s;

    iget-object v1, v1, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    iget-object v2, v0, LS3/D;->b:LS3/g;

    iget-object v2, v2, LS3/g;->o:Lcom/bumptech/glide/f;

    invoke-interface {v1, v2, v0}, Lcom/bumptech/glide/load/data/e;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d;)V

    move v4, v3

    goto :goto_4

    :cond_9
    return v4

    :cond_a
    iget v1, v0, LS3/D;->d:I

    add-int/2addr v1, v3

    iput v1, v0, LS3/D;->d:I

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_c

    iget v1, v0, LS3/D;->c:I

    add-int/2addr v1, v3

    iput v1, v0, LS3/D;->c:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_b

    return v4

    :cond_b
    iput v4, v0, LS3/D;->d:I

    :cond_c
    iget v1, v0, LS3/D;->c:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ3/g;

    iget v3, v0, LS3/D;->d:I

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v5, v0, LS3/D;->b:LS3/g;

    invoke-virtual {v5, v3}, LS3/g;->e(Ljava/lang/Class;)LQ3/o;

    move-result-object v19

    new-instance v5, LS3/E;

    iget-object v6, v0, LS3/D;->b:LS3/g;

    iget-object v7, v6, LS3/g;->c:Lcom/bumptech/glide/e;

    iget-object v14, v7, Lcom/bumptech/glide/e;->a:LT3/f;

    iget-object v7, v6, LS3/g;->n:LQ3/g;

    iget v8, v6, LS3/g;->e:I

    iget v9, v6, LS3/g;->f:I

    iget-object v11, v6, LS3/g;->i:LQ3/k;

    move-object v13, v5

    move-object v15, v1

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move-object/from16 v20, v3

    move-object/from16 v21, v11

    invoke-direct/range {v13 .. v21}, LS3/E;-><init>(LT3/f;LQ3/g;LQ3/g;IILQ3/o;Ljava/lang/Class;LQ3/k;)V

    iput-object v5, v0, LS3/D;->j:LS3/E;

    iget-object v3, v6, LS3/g;->h:LS3/o;

    invoke-virtual {v3}, LS3/o;->a()LU3/a;

    move-result-object v3

    iget-object v5, v0, LS3/D;->j:LS3/E;

    invoke-interface {v3, v5}, LU3/a;->d(LQ3/g;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v0, LS3/D;->i:Ljava/io/File;

    if-eqz v3, :cond_7

    iput-object v1, v0, LS3/D;->e:LQ3/g;

    iget-object v1, v0, LS3/D;->b:LS3/g;

    iget-object v1, v1, LS3/g;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/h;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LS3/D;->f:Ljava/util/List;

    iput v4, v0, LS3/D;->g:I

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, LS3/D;->h:LW3/s;

    if-eqz p0, :cond_0

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, LS3/D;->a:LS3/l;

    iget-object v1, p0, LS3/D;->j:LS3/E;

    iget-object p0, p0, LS3/D;->h:LW3/s;

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    sget-object v2, LQ3/a;->RESOURCE_DISK_CACHE:LQ3/a;

    invoke-virtual {v0, v1, p1, p0, v2}, LS3/l;->c(LQ3/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;LQ3/a;)V

    return-void
.end method

.method public final p0(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LS3/D;->a:LS3/l;

    iget-object v1, p0, LS3/D;->e:LQ3/g;

    iget-object v2, p0, LS3/D;->h:LW3/s;

    iget-object v3, v2, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    sget-object v4, LQ3/a;->RESOURCE_DISK_CACHE:LQ3/a;

    iget-object v5, p0, LS3/D;->j:LS3/E;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, LS3/l;->a(LQ3/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;LQ3/a;LQ3/g;)V

    return-void
.end method
