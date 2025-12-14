.class public final Lld/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/j;


# instance fields
.field public final a:Lhd/I;

.field public final b:Lhd/M;

.field public final c:LV/M;

.field public final d:Lld/h;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Ljava/lang/Object;

.field public g:Lld/e;

.field public h:Lld/k;

.field public i:Z

.field public j:LU0/h;

.field public k:Z

.field public l:Z

.field public m:Z

.field public volatile n:Z

.field public volatile o:LU0/h;

.field public volatile p:Lld/k;


# direct methods
.method public constructor <init>(Lhd/I;Lhd/M;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld/i;->a:Lhd/I;

    iput-object p2, p0, Lld/i;->b:Lhd/M;

    iget-object p2, p1, Lhd/I;->b:LB3/c;

    iget-object p2, p2, LB3/c;->a:Ljava/lang/Object;

    check-cast p2, LV/M;

    iput-object p2, p0, Lld/i;->c:LV/M;

    iget-object p1, p1, Lhd/I;->e:Lf1/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lld/h;

    invoke-direct {p1, p0}, Lld/h;-><init>(Lld/i;)V

    const/4 p2, 0x0

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lwd/B;->g(JLjava/util/concurrent/TimeUnit;)Lwd/B;

    iput-object p1, p0, Lld/i;->d:Lld/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lld/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lld/i;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Lld/k;)V
    .locals 2

    sget-object v0, Lid/b;->a:[B

    iget-object v0, p0, Lld/i;->h:Lld/k;

    if-nez v0, :cond_0

    iput-object p1, p0, Lld/i;->h:Lld/k;

    iget-object p1, p1, Lld/k;->p:Ljava/util/ArrayList;

    new-instance v0, Lld/g;

    iget-object v1, p0, Lld/i;->f:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lld/g;-><init>(Lld/i;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    sget-object v0, Lid/b;->a:[B

    iget-object v0, p0, Lld/i;->h:Lld/k;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lld/i;->h()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lld/i;->h:Lld/k;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lid/b;->d(Ljava/net/Socket;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Check failed."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lld/i;->i:Z

    if-eqz v0, :cond_3

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lld/i;->d:Lld/h;

    invoke-virtual {p0}, Lwd/d;->i()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_6
    return-object p0
.end method

.method public final c(Lhd/k;)V
    .locals 4

    iget-object v0, p0, Lld/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lqd/n;->a:Lqd/n;

    sget-object v0, Lqd/n;->a:Lqd/n;

    invoke-virtual {v0}, Lqd/n;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lld/i;->f:Ljava/lang/Object;

    iget-object v0, p0, Lld/i;->a:Lhd/I;

    iget-object v0, v0, Lhd/I;->a:LT3/f;

    new-instance v1, Lld/f;

    invoke-direct {v1, p0, p1}, Lld/f;-><init>(Lld/i;Lhd/k;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, LT3/f;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lld/i;->b:Lhd/M;

    iget-object p0, p0, Lhd/M;->a:Lhd/A;

    iget-object p0, p0, Lhd/A;->d:Ljava/lang/String;

    iget-object p1, v0, LT3/f;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld/f;

    iget-object v3, v2, Lld/f;->c:Lld/i;

    iget-object v3, v3, Lld/i;->b:Lhd/M;

    iget-object v3, v3, Lhd/M;->a:Lhd/A;

    iget-object v3, v3, Lhd/A;->d:Ljava/lang/String;

    invoke-static {v3, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    iget-object p1, v0, LT3/f;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld/f;

    iget-object v3, v2, Lld/f;->c:Lld/i;

    iget-object v3, v3, Lld/i;->b:Lhd/M;

    iget-object v3, v3, Lhd/M;->a:Lhd/A;

    iget-object v3, v3, Lhd/A;->d:Ljava/lang/String;

    invoke-static {v3, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object p0, v2, Lld/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p0, v1, Lld/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    invoke-virtual {v0}, LT3/f;->i()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    const-string p0, "Already Executed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lld/i;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lld/i;->n:Z

    iget-object v0, p0, Lld/i;->o:LU0/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, LU0/h;->e:Ljava/lang/Object;

    check-cast v0, Lmd/d;

    invoke-interface {v0}, Lmd/d;->cancel()V

    :cond_1
    iget-object p0, p0, Lld/i;->p:Lld/k;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lld/k;->c:Ljava/net/Socket;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lid/b;->d(Ljava/net/Socket;)V

    :cond_2
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lld/i;

    iget-object v1, p0, Lld/i;->a:Lhd/I;

    iget-object p0, p0, Lld/i;->b:Lhd/M;

    invoke-direct {v0, v1, p0}, Lld/i;-><init>(Lhd/I;Lhd/M;)V

    return-object v0
.end method

.method public final d(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lld/i;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lld/i;->o:LU0/h;

    if-eqz p1, :cond_0

    iget-object v1, p1, LU0/h;->e:Ljava/lang/Object;

    check-cast v1, Lmd/d;

    invoke-interface {v1}, Lmd/d;->cancel()V

    const/4 v1, 0x1

    iget-object v2, p1, LU0/h;->c:Ljava/lang/Object;

    check-cast v2, Lld/i;

    invoke-virtual {v2, p1, v1, v1, v0}, Lld/i;->f(LU0/h;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, Lld/i;->j:LU0/h;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()Lhd/T;
    .locals 11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lld/i;->a:Lhd/I;

    iget-object v0, v0, Lhd/I;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    new-instance v0, Lmd/a;

    iget-object v1, p0, Lld/i;->a:Lhd/I;

    invoke-direct {v0, v1}, Lmd/a;-><init>(Lhd/I;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lmd/a;

    iget-object v1, p0, Lld/i;->a:Lhd/I;

    iget-object v1, v1, Lhd/I;->j:Lhd/b;

    invoke-direct {v0, v1}, Lmd/a;-><init>(Lhd/b;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljd/b;

    iget-object v1, p0, Lld/i;->a:Lhd/I;

    iget-object v1, v1, Lhd/I;->k:Lhd/g;

    invoke-direct {v0, v1}, Ljd/b;-><init>(Lhd/g;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lld/a;->a:Lld/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lld/i;->a:Lhd/I;

    iget-object v0, v0, Lhd/I;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    new-instance v0, Lmd/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lmd/f;

    iget-object v5, p0, Lld/i;->b:Lhd/M;

    iget-object v0, p0, Lld/i;->a:Lhd/I;

    iget v6, v0, Lhd/I;->x:I

    iget v7, v0, Lhd/I;->y:I

    iget v8, v0, Lhd/I;->z:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lmd/f;-><init>(Lld/i;Ljava/util/ArrayList;ILU0/h;Lhd/M;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lld/i;->b:Lhd/M;

    invoke-virtual {v9, v2}, Lmd/f;->b(Lhd/M;)Lhd/T;

    move-result-object v2

    iget-boolean v3, p0, Lld/i;->n:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lld/i;->g(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {v2}, Lid/b;->c(Ljava/io/Closeable;)V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Lld/i;->g(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-static {v1, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    move v10, v2

    move-object v2, v1

    move v1, v10

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lld/i;->g(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    throw v2
.end method

.method public final f(LU0/h;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    const-string v0, "exchange"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lld/i;->o:LU0/h;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    monitor-enter p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lld/i;->k:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Lld/i;->l:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v0, p0, Lld/i;->k:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean v0, p0, Lld/i;->l:Z

    :cond_4
    iget-boolean p2, p0, Lld/i;->k:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, Lld/i;->l:Z

    if-nez p3, :cond_5

    move p3, p1

    goto :goto_1

    :cond_5
    move p3, v0

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, Lld/i;->l:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lld/i;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move v0, p1

    :cond_6
    move p2, v0

    move v0, p3

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, v0

    :goto_3
    monitor-exit p0

    if-eqz v0, :cond_8

    const/4 p3, 0x0

    iput-object p3, p0, Lld/i;->o:LU0/h;

    iget-object p3, p0, Lld/i;->h:Lld/k;

    if-eqz p3, :cond_8

    monitor-enter p3

    :try_start_1
    iget v0, p3, Lld/k;->m:I

    add-int/2addr v0, p1

    iput v0, p3, Lld/k;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, Lld/i;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p4
.end method

.method public final g(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lld/i;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lld/i;->m:Z

    iget-boolean v0, p0, Lld/i;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lld/i;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lld/i;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final h()Ljava/net/Socket;
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lld/i;->h:Lld/k;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v2, Lid/b;->a:[B

    iget-object v2, v1, Lld/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_1
    if-eq v4, v6, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lld/i;->h:Lld/k;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v1, Lld/k;->q:J

    iget-object p0, p0, Lld/i;->c:LV/M;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lid/b;->a:[B

    iget-boolean v2, v1, Lld/k;->j:Z

    iget-object v4, p0, LV/M;->b:Ljava/lang/Object;

    check-cast v4, Lkd/b;

    if-nez v2, :cond_2

    iget-object p0, p0, LV/M;->c:Ljava/lang/Object;

    check-cast p0, Ljd/f;

    invoke-static {v4, p0}, Lkd/b;->d(Lkd/b;Lkd/a;)V

    goto :goto_2

    :cond_2
    iput-boolean v0, v1, Lld/k;->j:Z

    iget-object p0, p0, LV/M;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v4}, Lkd/b;->a()V

    :cond_3
    iget-object p0, v1, Lld/k;->d:Ljava/net/Socket;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
