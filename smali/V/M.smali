.class public final LV/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLV/t;LW/k;LV/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LV/M;->b:Ljava/lang/Object;

    iput-object p4, p0, LV/M;->c:Ljava/lang/Object;

    iput-object p5, p0, LV/M;->d:Ljava/lang/Object;

    invoke-static {p1, p2}, LH0/a;->b(J)I

    move-result p1

    const p2, 0x7fffffff

    const/4 p3, 0x5

    invoke-static {p1, p2, p3}, LG5/S2;->b(III)J

    move-result-wide p1

    iput-wide p1, p0, LV/M;->a:J

    return-void
.end method

.method public constructor <init>(Lkd/c;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, LV/M;->a:J

    invoke-virtual {p1}, Lkd/c;->e()Lkd/b;

    move-result-object p1

    iput-object p1, p0, LV/M;->b:Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lid/b;->g:Ljava/lang/String;

    const-string v0, " ConnectionPool"

    invoke-static {p1, p4, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljd/f;

    const/4 v0, 0x2

    invoke-direct {p4, p0, p1, v0}, Ljd/f;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object p4, p0, LV/M;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, LV/M;->d:Ljava/lang/Object;

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "keepAliveDuration <= 0: "

    invoke-static {p2, p3, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lhd/a;Lld/i;Ljava/util/ArrayList;Z)Z
    .locals 4

    const-string v0, "call"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LV/M;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lld/k;

    const-string v2, "connection"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    :try_start_0
    iget-object v3, v0, Lld/k;->g:Lod/q;

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0, p1, p3}, Lld/k;->h(Lhd/a;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lld/i;->a(Lld/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_0

    :goto_1
    monitor-exit v0

    throw p0

    :cond_3
    return v1
.end method

.method public b(I)LV/L;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    iget-object v2, v0, LV/M;->b:Ljava/lang/Object;

    check-cast v2, LV/t;

    iget-object v2, v2, LV/t;->a:LW/a;

    invoke-virtual {v2, v1}, LW/a;->c(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v2, v0, LV/M;->c:Ljava/lang/Object;

    check-cast v2, LW/k;

    iget-object v3, v2, LW/k;->c:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    iget-object v4, v2, LW/k;->a:LW/h;

    iget-object v6, v4, LW/h;->b:LS/W;

    invoke-virtual {v6}, LS/W;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LW/i;

    invoke-interface {v6, v1}, LW/i;->c(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, LW/h;->a(ILjava/lang/Object;)Lsb/n;

    move-result-object v4

    iget-object v2, v2, LW/k;->b:Lz0/M;

    invoke-interface {v2, v6, v4}, Lz0/M;->h(Ljava/lang/Object;Lsb/n;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz0/w;

    iget-wide v9, v0, LV/M;->a:J

    invoke-interface {v8, v9, v10}, Lz0/w;->o(J)Lz0/G;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v6

    :goto_1
    iget-object v0, v0, LV/M;->d:Ljava/lang/Object;

    check-cast v0, LV/x;

    const-string v3, "key"

    invoke-static {v13, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v0, LV/x;->a:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    iget v3, v0, LV/x;->b:I

    move v10, v3

    :goto_2
    iget-object v3, v0, LV/x;->c:LW/k;

    iget-object v3, v3, LW/k;->b:Lz0/M;

    invoke-interface {v3}, Lz0/z;->getLayoutDirection()LH0/k;

    move-result-object v5

    new-instance v14, LV/L;

    iget v7, v0, LV/x;->g:I

    iget-wide v11, v0, LV/x;->j:J

    iget-object v3, v0, LV/x;->d:Lm0/b;

    iget-object v4, v0, LV/x;->e:Lm0/c;

    iget-boolean v6, v0, LV/x;->f:Z

    iget v8, v0, LV/x;->h:I

    iget-object v9, v0, LV/x;->i:LV/n;

    move-object v0, v14

    move/from16 v1, p1

    invoke-direct/range {v0 .. v13}, LV/L;-><init>(ILjava/util/List;Lm0/b;Lm0/c;LH0/k;ZIILV/n;IJLjava/lang/Object;)V

    return-object v14
.end method

.method public c(Lld/k;J)I
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lid/b;->a:[B

    iget-object v1, p1, Lld/k;->p:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    check-cast v4, Lld/g;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A connection to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lld/k;->b:Lhd/Y;

    iget-object v6, v6, Lhd/Y;->a:Lhd/a;

    iget-object v6, v6, Lhd/a;->i:Lhd/A;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lqd/n;->a:Lqd/n;

    sget-object v6, Lqd/n;->a:Lqd/n;

    iget-object v4, v4, Lld/g;->a:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Lqd/n;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-boolean v0, p1, Lld/k;->j:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v0, p0, LV/M;->a:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Lld/k;->q:J

    return v2

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
