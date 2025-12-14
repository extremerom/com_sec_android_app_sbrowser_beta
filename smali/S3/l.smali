.class public final LS3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/e;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lm4/b;


# instance fields
.field public A:Lcom/bumptech/glide/load/data/e;

.field public volatile B:LS3/f;

.field public volatile C:Z

.field public volatile D:Z

.field public E:Z

.field public final a:LS3/g;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lm4/e;

.field public final d:LS3/o;

.field public final e:LZ3/x;

.field public final f:Lo3/t;

.field public final g:LS3/i;

.field public h:Lcom/bumptech/glide/e;

.field public i:LQ3/g;

.field public j:Lcom/bumptech/glide/f;

.field public k:LS3/u;

.field public l:I

.field public m:I

.field public n:LS3/n;

.field public o:LQ3/k;

.field public p:LS3/t;

.field public q:I

.field public r:LS3/k;

.field public s:LS3/j;

.field public t:J

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Thread;

.field public w:LQ3/g;

.field public x:LQ3/g;

.field public y:Ljava/lang/Object;

.field public z:LQ3/a;


# direct methods
.method public constructor <init>(LS3/o;LZ3/x;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LS3/g;

    invoke-direct {v0}, LS3/g;-><init>()V

    iput-object v0, p0, LS3/l;->a:LS3/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LS3/l;->b:Ljava/util/ArrayList;

    new-instance v0, Lm4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LS3/l;->c:Lm4/e;

    new-instance v0, Lo3/t;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lo3/t;-><init>(I)V

    iput-object v0, p0, LS3/l;->f:Lo3/t;

    new-instance v0, LS3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LS3/l;->g:LS3/i;

    iput-object p1, p0, LS3/l;->d:LS3/o;

    iput-object p2, p0, LS3/l;->e:LZ3/x;

    return-void
.end method


# virtual methods
.method public final a(LQ3/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;LQ3/a;LQ3/g;)V
    .locals 0

    iput-object p1, p0, LS3/l;->w:LQ3/g;

    iput-object p2, p0, LS3/l;->y:Ljava/lang/Object;

    iput-object p3, p0, LS3/l;->A:Lcom/bumptech/glide/load/data/e;

    iput-object p4, p0, LS3/l;->z:LQ3/a;

    iput-object p5, p0, LS3/l;->x:LQ3/g;

    iget-object p2, p0, LS3/l;->a:LS3/g;

    invoke-virtual {p2}, LS3/g;->a()Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, LS3/l;->E:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, LS3/l;->v:Ljava/lang/Thread;

    if-eq p1, p2, :cond_1

    sget-object p1, LS3/j;->DECODE_DATA:LS3/j;

    invoke-virtual {p0, p1}, LS3/l;->o(LS3/j;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LS3/l;->g()V

    :goto_0
    return-void
.end method

.method public final c(LQ3/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;LQ3/a;)V
    .locals 2

    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->b()V

    new-instance v0, LS3/x;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, LS3/x;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object p2

    iput-object p1, v0, LS3/x;->b:LQ3/g;

    iput-object p4, v0, LS3/x;->c:LQ3/a;

    iput-object p2, v0, LS3/x;->d:Ljava/lang/Class;

    iget-object p1, p0, LS3/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, LS3/l;->v:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, LS3/j;->SWITCH_TO_SOURCE_SERVICE:LS3/j;

    invoke-virtual {p0, p1}, LS3/l;->o(LS3/j;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LS3/l;->p()V

    :goto_0
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, LS3/l;

    iget-object v0, p0, LS3/l;->j:Lcom/bumptech/glide/f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p1, LS3/l;->j:Lcom/bumptech/glide/f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, LS3/l;->q:I

    iget p1, p1, LS3/l;->q:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public final d()Lm4/e;
    .locals 0

    iget-object p0, p0, LS3/l;->c:Lm4/e;

    return-object p0
.end method

.method public final e(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;LQ3/a;)LS3/C;
    .locals 5

    const-string v0, "Decoded result "

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    return-object v1

    :cond_0
    :try_start_0
    sget v2, Ll4/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0, p2, p3}, LS3/l;->f(Ljava/lang/Object;LQ3/a;)LS3/C;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v2, v3, p3, v1}, LS3/l;->l(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    return-object p2

    :goto_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    throw p0
.end method

.method public final f(Ljava/lang/Object;LQ3/a;)LS3/C;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, LS3/l;->a:LS3/g;

    invoke-virtual {v1, v0}, LS3/g;->c(Ljava/lang/Class;)LS3/A;

    move-result-object v2

    iget-object v0, p0, LS3/l;->o:LQ3/k;

    sget-object v3, LQ3/a;->RESOURCE_DISK_CACHE:LQ3/a;

    if-eq p2, v3, :cond_1

    iget-boolean v1, v1, LS3/g;->r:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-object v3, LZ3/q;->i:LQ3/j;

    invoke-virtual {v0, v3}, LQ3/k;->a(LQ3/j;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_3
    new-instance v0, LQ3/k;

    invoke-direct {v0}, LQ3/k;-><init>()V

    iget-object v4, p0, LS3/l;->o:LQ3/k;

    iget-object v5, v0, LQ3/k;->b:Ll4/c;

    iget-object v4, v4, LQ3/k;->b:Ll4/c;

    invoke-virtual {v5, v4}, Ll4/c;->g(LN/f;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Ll4/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_3
    iget-object v0, p0, LS3/l;->h:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    move-result-object p1

    :try_start_0
    iget v3, p0, LS3/l;->l:I

    iget v4, p0, LS3/l;->m:I

    new-instance v7, Lo3/e;

    invoke-direct {v7, p0, p2}, Lo3/e;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, LS3/A;->a(IILQ3/k;Lcom/bumptech/glide/load/data/g;Lo3/e;)LS3/C;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->b()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->b()V

    throw p0
.end method

.method public final g()V
    .locals 13

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v1, p0, LS3/l;->t:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LS3/l;->y:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cache key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LS3/l;->w:LQ3/g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", fetcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LS3/l;->A:Lcom/bumptech/glide/load/data/e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, LS3/l;->l(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LS3/l;->A:Lcom/bumptech/glide/load/data/e;

    iget-object v2, p0, LS3/l;->y:Ljava/lang/Object;

    iget-object v3, p0, LS3/l;->z:LQ3/a;

    invoke-virtual {p0, v1, v2, v3}, LS3/l;->e(Lcom/bumptech/glide/load/data/e;Ljava/lang/Object;LQ3/a;)LS3/C;

    move-result-object v1
    :try_end_0
    .catch LS3/x; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, LS3/l;->x:LQ3/g;

    iget-object v3, p0, LS3/l;->z:LQ3/a;

    iput-object v2, v1, LS3/x;->b:LQ3/g;

    iput-object v3, v1, LS3/x;->c:LQ3/a;

    iput-object v0, v1, LS3/x;->d:Ljava/lang/Class;

    iget-object v2, p0, LS3/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_b

    iget-object v2, p0, LS3/l;->z:LQ3/a;

    iget-boolean v3, p0, LS3/l;->E:Z

    instance-of v4, v1, LS3/y;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, LS3/y;

    invoke-interface {v4}, LS3/y;->b()V

    :cond_1
    iget-object v4, p0, LS3/l;->f:Lo3/t;

    iget-object v4, v4, Lo3/t;->d:Ljava/lang/Object;

    check-cast v4, LS3/B;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    sget-object v0, LS3/B;->e:LZ3/x;

    invoke-virtual {v0}, LZ3/x;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS3/B;

    iput-boolean v5, v0, LS3/B;->d:Z

    iput-boolean v6, v0, LS3/B;->c:Z

    iput-object v1, v0, LS3/B;->b:LS3/C;

    move-object v1, v0

    :cond_2
    invoke-virtual {p0}, LS3/l;->r()V

    iget-object v4, p0, LS3/l;->p:LS3/t;

    monitor-enter v4

    :try_start_1
    iput-object v1, v4, LS3/t;->n:LS3/C;

    iput-object v2, v4, LS3/t;->o:LQ3/a;

    iput-boolean v3, v4, LS3/t;->v:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-enter v4

    :try_start_2
    iget-object v1, v4, LS3/t;->b:Lm4/e;

    invoke-virtual {v1}, Lm4/e;->a()V

    iget-boolean v1, v4, LS3/t;->u:Z

    if-eqz v1, :cond_3

    iget-object v1, v4, LS3/t;->n:LS3/C;

    invoke-interface {v1}, LS3/C;->c()V

    invoke-virtual {v4}, LS3/t;->g()V

    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_3
    iget-object v1, v4, LS3/t;->a:LS3/s;

    iget-object v1, v1, LS3/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, v4, LS3/t;->p:Z

    if-nez v1, :cond_9

    iget-object v1, v4, LS3/t;->e:Lu5/d;

    iget-object v8, v4, LS3/t;->n:LS3/C;

    iget-boolean v9, v4, LS3/t;->l:Z

    iget-object v11, v4, LS3/t;->k:LS3/u;

    iget-object v12, v4, LS3/t;->c:LS3/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LS3/v;

    const/4 v10, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, LS3/v;-><init>(LS3/C;ZZLS3/u;LS3/p;)V

    iput-object v1, v4, LS3/t;->s:LS3/v;

    iput-boolean v6, v4, LS3/t;->p:Z

    iget-object v1, v4, LS3/t;->a:LS3/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, LS3/s;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v4, v1}, LS3/t;->e(I)V

    iget-object v1, v4, LS3/t;->k:LS3/u;

    iget-object v3, v4, LS3/t;->s:LS3/v;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v7, v4, LS3/t;->f:LS3/p;

    invoke-virtual {v7, v4, v1, v3}, LS3/p;->d(LS3/t;LS3/u;LS3/v;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS3/r;

    iget-object v3, v2, LS3/r;->b:Ljava/util/concurrent/Executor;

    new-instance v7, LS3/q;

    iget-object v2, v2, LS3/r;->a:Lh4/j;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v2, v8}, LS3/q;-><init>(LS3/t;Lh4/j;I)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, LS3/t;->c()V

    :goto_2
    sget-object v1, LS3/k;->ENCODE:LS3/k;

    iput-object v1, p0, LS3/l;->r:LS3/k;

    :try_start_3
    iget-object v1, p0, LS3/l;->f:Lo3/t;

    iget-object v2, v1, Lo3/t;->d:Ljava/lang/Object;

    check-cast v2, LS3/B;

    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    if-eqz v5, :cond_6

    iget-object v2, p0, LS3/l;->d:LS3/o;

    iget-object v3, p0, LS3/l;->o:LQ3/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, LS3/o;->a()LU3/a;

    move-result-object v2

    iget-object v4, v1, Lo3/t;->b:Ljava/lang/Object;

    check-cast v4, LQ3/g;

    new-instance v5, Lo3/t;

    iget-object v7, v1, Lo3/t;->c:Ljava/lang/Object;

    check-cast v7, LQ3/n;

    iget-object v8, v1, Lo3/t;->d:Ljava/lang/Object;

    check-cast v8, LS3/B;

    const/16 v9, 0x15

    invoke-direct {v5, v7, v9, v8, v3}, Lo3/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5}, LU3/a;->f(LQ3/g;Lo3/t;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, v1, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, LS3/B;

    invoke-virtual {v1}, LS3/B;->b()V

    goto :goto_3

    :catchall_1
    move-exception p0

    iget-object v1, v1, Lo3/t;->d:Ljava/lang/Object;

    check-cast v1, LS3/B;

    invoke-virtual {v1}, LS3/B;->b()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, LS3/B;->b()V

    :cond_7
    iget-object v1, p0, LS3/l;->g:LS3/i;

    monitor-enter v1

    :try_start_6
    iput-boolean v6, v1, LS3/i;->b:Z

    invoke-virtual {v1}, LS3/i;->a()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v1

    if-eqz v0, :cond_c

    invoke-virtual {p0}, LS3/l;->n()V

    goto :goto_6

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0}, LS3/B;->b()V

    :cond_8
    throw p0

    :cond_9
    :try_start_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already have resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received a resource without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :catchall_4
    move-exception p0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    :cond_b
    invoke-virtual {p0}, LS3/l;->p()V

    :cond_c
    :goto_6
    return-void
.end method

.method public final h()LS3/f;
    .locals 3

    sget-object v0, LS3/h;->b:[I

    iget-object v1, p0, LS3/l;->r:LS3/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, LS3/l;->a:LS3/g;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized stage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LS3/l;->r:LS3/k;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, LS3/G;

    invoke-direct {v0, v2, p0}, LS3/G;-><init>(LS3/g;LS3/l;)V

    return-object v0

    :cond_2
    new-instance v0, LS3/c;

    invoke-virtual {v2}, LS3/g;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, LS3/c;-><init>(Ljava/util/List;LS3/g;LS3/e;)V

    return-object v0

    :cond_3
    new-instance v0, LS3/D;

    invoke-direct {v0, v2, p0}, LS3/D;-><init>(LS3/g;LS3/l;)V

    return-object v0
.end method

.method public final k(LS3/k;)LS3/k;
    .locals 2

    sget-object v0, LS3/h;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p1, p0, LS3/l;->n:LS3/n;

    iget p1, p1, LS3/n;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    sget-object p0, LS3/k;->RESOURCE_CACHE:LS3/k;

    goto :goto_1

    :cond_0
    sget-object p1, LS3/k;->RESOURCE_CACHE:LS3/k;

    invoke-virtual {p0, p1}, LS3/l;->k(LS3/k;)LS3/k;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized stage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, LS3/k;->FINISHED:LS3/k;

    return-object p0

    :cond_3
    sget-object p0, LS3/k;->SOURCE:LS3/k;

    return-object p0

    :cond_4
    iget-object p1, p0, LS3/l;->n:LS3/n;

    iget p1, p1, LS3/n;->a:I

    packed-switch p1, :pswitch_data_1

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_2

    :pswitch_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    sget-object p0, LS3/k;->DATA_CACHE:LS3/k;

    goto :goto_3

    :cond_5
    sget-object p1, LS3/k;->DATA_CACHE:LS3/k;

    invoke-virtual {p0, p1}, LS3/l;->k(LS3/k;)LS3/k;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final l(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p3, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1, p2}, Ll4/h;->a(J)D

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LS3/l;->k:LS3/u;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p0, ", "

    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final m()V
    .locals 7

    invoke-virtual {p0}, LS3/l;->r()V

    new-instance v0, LS3/x;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LS3/l;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, LS3/x;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, LS3/l;->p:LS3/t;

    monitor-enter v1

    :try_start_0
    iput-object v0, v1, LS3/t;->q:LS3/x;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, LS3/t;->b:Lm4/e;

    invoke-virtual {v0}, Lm4/e;->a()V

    iget-boolean v0, v1, LS3/t;->u:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1}, LS3/t;->g()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v0, v1, LS3/t;->a:LS3/s;

    iget-object v0, v0, LS3/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v1, LS3/t;->r:Z

    if-nez v0, :cond_3

    iput-boolean v2, v1, LS3/t;->r:Z

    iget-object v0, v1, LS3/t;->k:LS3/u;

    iget-object v3, v1, LS3/t;->a:LS3/s;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, v3, LS3/s;->a:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, LS3/t;->e(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, v1, LS3/t;->f:LS3/p;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v0, v5}, LS3/p;->d(LS3/t;LS3/u;LS3/v;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LS3/r;

    iget-object v4, v3, LS3/r;->b:Ljava/util/concurrent/Executor;

    new-instance v5, LS3/q;

    iget-object v3, v3, LS3/r;->a:Lh4/j;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v6}, LS3/q;-><init>(LS3/t;Lh4/j;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LS3/t;->c()V

    :goto_1
    iget-object v0, p0, LS3/l;->g:LS3/i;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, LS3/i;->c:Z

    invoke-virtual {v0}, LS3/i;->a()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LS3/l;->n()V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already failed once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Received an exception without any callbacks to notify"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, LS3/l;->g:LS3/i;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, LS3/i;->b:Z

    iput-boolean v1, v0, LS3/i;->a:Z

    iput-boolean v1, v0, LS3/i;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, LS3/l;->f:Lo3/t;

    const/4 v2, 0x0

    iput-object v2, v0, Lo3/t;->b:Ljava/lang/Object;

    iput-object v2, v0, Lo3/t;->c:Ljava/lang/Object;

    iput-object v2, v0, Lo3/t;->d:Ljava/lang/Object;

    iget-object v0, p0, LS3/l;->a:LS3/g;

    iput-object v2, v0, LS3/g;->c:Lcom/bumptech/glide/e;

    iput-object v2, v0, LS3/g;->d:Ljava/lang/Object;

    iput-object v2, v0, LS3/g;->n:LQ3/g;

    iput-object v2, v0, LS3/g;->g:Ljava/lang/Class;

    iput-object v2, v0, LS3/g;->k:Ljava/lang/Class;

    iput-object v2, v0, LS3/g;->i:LQ3/k;

    iput-object v2, v0, LS3/g;->o:Lcom/bumptech/glide/f;

    iput-object v2, v0, LS3/g;->j:Ll4/c;

    iput-object v2, v0, LS3/g;->p:LS3/n;

    iget-object v3, v0, LS3/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, LS3/g;->l:Z

    iget-object v3, v0, LS3/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, v0, LS3/g;->m:Z

    iput-boolean v1, p0, LS3/l;->C:Z

    iput-object v2, p0, LS3/l;->h:Lcom/bumptech/glide/e;

    iput-object v2, p0, LS3/l;->i:LQ3/g;

    iput-object v2, p0, LS3/l;->o:LQ3/k;

    iput-object v2, p0, LS3/l;->j:Lcom/bumptech/glide/f;

    iput-object v2, p0, LS3/l;->k:LS3/u;

    iput-object v2, p0, LS3/l;->p:LS3/t;

    iput-object v2, p0, LS3/l;->r:LS3/k;

    iput-object v2, p0, LS3/l;->B:LS3/f;

    iput-object v2, p0, LS3/l;->v:Ljava/lang/Thread;

    iput-object v2, p0, LS3/l;->w:LQ3/g;

    iput-object v2, p0, LS3/l;->y:Ljava/lang/Object;

    iput-object v2, p0, LS3/l;->z:LQ3/a;

    iput-object v2, p0, LS3/l;->A:Lcom/bumptech/glide/load/data/e;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LS3/l;->t:J

    iput-boolean v1, p0, LS3/l;->D:Z

    iget-object v0, p0, LS3/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, LS3/l;->e:LZ3/x;

    invoke-virtual {v0, p0}, LZ3/x;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final o(LS3/j;)V
    .locals 1

    iput-object p1, p0, LS3/l;->s:LS3/j;

    iget-object p1, p0, LS3/l;->p:LS3/t;

    iget-boolean v0, p1, LS3/t;->m:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, LS3/t;->i:LV3/e;

    goto :goto_0

    :cond_0
    iget-object p1, p1, LS3/t;->h:LV3/e;

    :goto_0
    invoke-virtual {p1, p0}, LV3/e;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LS3/l;->v:Ljava/lang/Thread;

    sget v0, Ll4/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, LS3/l;->t:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, LS3/l;->D:Z

    if-nez v1, :cond_1

    iget-object v1, p0, LS3/l;->B:LS3/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, LS3/l;->B:LS3/f;

    invoke-interface {v0}, LS3/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, LS3/l;->r:LS3/k;

    invoke-virtual {p0, v1}, LS3/l;->k(LS3/k;)LS3/k;

    move-result-object v1

    iput-object v1, p0, LS3/l;->r:LS3/k;

    invoke-virtual {p0}, LS3/l;->h()LS3/f;

    move-result-object v1

    iput-object v1, p0, LS3/l;->B:LS3/f;

    iget-object v1, p0, LS3/l;->r:LS3/k;

    sget-object v2, LS3/k;->SOURCE:LS3/k;

    if-ne v1, v2, :cond_0

    sget-object v0, LS3/j;->SWITCH_TO_SOURCE_SERVICE:LS3/j;

    invoke-virtual {p0, v0}, LS3/l;->o(LS3/j;)V

    return-void

    :cond_1
    iget-object v1, p0, LS3/l;->r:LS3/k;

    sget-object v2, LS3/k;->FINISHED:LS3/k;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, LS3/l;->D:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, LS3/l;->m()V

    :cond_3
    return-void
.end method

.method public final q()V
    .locals 3

    sget-object v0, LS3/h;->a:[I

    iget-object v1, p0, LS3/l;->s:LS3/j;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LS3/l;->g()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized run reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LS3/l;->s:LS3/j;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, LS3/l;->p()V

    goto :goto_0

    :cond_2
    sget-object v0, LS3/k;->INITIALIZE:LS3/k;

    invoke-virtual {p0, v0}, LS3/l;->k(LS3/k;)LS3/k;

    move-result-object v0

    iput-object v0, p0, LS3/l;->r:LS3/k;

    invoke-virtual {p0}, LS3/l;->h()LS3/f;

    move-result-object v0

    iput-object v0, p0, LS3/l;->B:LS3/f;

    invoke-virtual {p0}, LS3/l;->p()V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, LS3/l;->c:Lm4/e;

    invoke-virtual {v0}, Lm4/e;->a()V

    iget-boolean v0, p0, LS3/l;->C:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, LS3/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LS3/l;->b:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iput-boolean v1, p0, LS3/l;->C:Z

    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "DecodeJob"

    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    iget-object v2, p0, LS3/l;->A:Lcom/bumptech/glide/load/data/e;

    :try_start_0
    iget-boolean v3, p0, LS3/l;->D:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, LS3/l;->m()V
    :try_end_0
    .catch LS3/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, LS3/l;->q()V
    :try_end_1
    .catch LS3/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_2
    return-void

    :goto_0
    const/4 v4, 0x3

    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, LS3/l;->D:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stage: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LS3/l;->r:LS3/k;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, LS3/l;->r:LS3/k;

    sget-object v1, LS3/k;->ENCODE:LS3/k;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, LS3/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LS3/l;->m()V

    :cond_4
    iget-boolean p0, p0, LS3/l;->D:Z

    if-nez p0, :cond_5

    throw v3

    :cond_5
    throw v3

    :goto_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_6
    throw p0
.end method
