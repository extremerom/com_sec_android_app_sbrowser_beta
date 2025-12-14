.class public abstract LNc/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ6/i;

.field public static final b:LQ6/i;

.field public static final c:LQ6/i;

.field public static final d:LQ6/i;

.field public static final e:LQ6/i;

.field public static final f:LQ6/i;

.field public static final g:LQ6/i;

.field public static final h:LQ6/i;

.field public static final i:LNc/S;

.field public static final j:LNc/S;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LQ6/i;

    const-string v1, "RESUME_TOKEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->a:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "REMOVED_TASK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->b:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->c:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "COMPLETING_ALREADY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->d:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->e:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->f:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->g:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "SEALED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LNc/E;->h:LQ6/i;

    new-instance v0, LNc/S;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LNc/S;-><init>(Z)V

    sput-object v0, LNc/E;->i:LNc/S;

    new-instance v0, LNc/S;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LNc/S;-><init>(Z)V

    sput-object v0, LNc/E;->j:LNc/S;

    return-void
.end method

.method public static final A(Ljava/lang/String;)LNc/a0;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v1, LNc/G0;

    invoke-direct {v1, p0, v0}, LNc/G0;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 p0, 0x1

    invoke-static {p0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance v0, LNc/a0;

    invoke-direct {v0, p0}, LNc/a0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final B(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, LNc/s;

    if-eqz v0, :cond_0

    check-cast p0, LNc/s;

    iget-object p0, p0, LNc/s;->a:Ljava/lang/Throwable;

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final C(LNc/k;Lib/c;Z)V
    .locals 2

    sget-object v0, LNc/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LNc/k;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LNc/k;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_5

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LUc/h;

    iget-object p2, p1, LUc/h;->e:Lkb/c;

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    iget-object p1, p1, LUc/h;->g:Ljava/lang/Object;

    invoke-static {v0, p1}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, LUc/a;->f:LQ6/i;

    if-eq p1, v1, :cond_1

    invoke-static {p2, v0, p1}, LNc/E;->J(Lib/c;Lib/h;Ljava/lang/Object;)LNc/L0;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p2, p0}, Lib/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LNc/L0;->j0()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    invoke-static {v0, p1}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LNc/L0;->j0()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    invoke-static {v0, p1}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    :cond_4
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final D(Lib/h;Lsb/n;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lib/d;->a:Lib/d;

    invoke-interface {p0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v2

    check-cast v2, Lib/e;

    sget-object v3, Lib/i;->a:Lib/i;

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-static {}, LNc/F0;->a()LNc/Y;

    move-result-object v2

    invoke-interface {p0, v2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    invoke-static {v3, p0, v4}, LNc/E;->m(Lib/h;Lib/h;Z)Lib/h;

    move-result-object p0

    sget-object v3, LNc/N;->a:LWc/f;

    if-eq p0, v3, :cond_2

    invoke-interface {p0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p0, v3}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v5, v2, LNc/Y;

    if-eqz v5, :cond_1

    check-cast v2, LNc/Y;

    :cond_1
    sget-object v2, LNc/F0;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LNc/Y;

    invoke-static {v3, p0, v4}, LNc/E;->m(Lib/h;Lib/h;Z)Lib/h;

    move-result-object p0

    sget-object v3, LNc/N;->a:LWc/f;

    if-eq p0, v3, :cond_2

    invoke-interface {p0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p0, v3}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    :cond_2
    :goto_0
    new-instance v1, LNc/f;

    invoke-direct {v1, p0, v0, v2}, LNc/f;-><init>(Lib/h;Ljava/lang/Thread;LNc/Y;)V

    sget-object p0, LNc/D;->DEFAULT:LNc/D;

    invoke-virtual {v1, p0, v1, p1}, LNc/a;->i0(LNc/D;LNc/a;Lsb/n;)V

    const/4 p0, 0x0

    iget-object p1, v1, LNc/f;->e:LNc/Y;

    if-eqz p1, :cond_3

    sget v0, LNc/Y;->e:I

    invoke-virtual {p1, p0}, LNc/Y;->V(Z)V

    :cond_3
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LNc/Y;->b0()J

    move-result-wide v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    :goto_2
    invoke-virtual {v1}, LNc/t0;->j()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    sget v0, LNc/Y;->e:I

    invoke-virtual {p1, p0}, LNc/Y;->K(Z)V

    :cond_6
    invoke-virtual {v1}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LNc/E;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, LNc/s;

    if-eqz p1, :cond_7

    move-object p1, p0

    check-cast p1, LNc/s;

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    return-object p0

    :cond_8
    iget-object p0, p1, LNc/s;->a:Ljava/lang/Throwable;

    throw p0

    :cond_9
    :try_start_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v1, v0}, LNc/t0;->A(Ljava/lang/Object;)Z

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz p1, :cond_a

    sget v1, LNc/Y;->e:I

    invoke-virtual {p1, p0}, LNc/Y;->K(Z)V

    :cond_a
    throw v0
.end method

.method public static synthetic E(Lsb/n;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lib/i;->a:Lib/i;

    invoke-static {v0, p0}, LNc/E;->D(Lib/h;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final F(LNc/I0;Lsb/n;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LUc/w;->d:Lib/c;

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    invoke-static {v0}, LNc/E;->o(Lib/h;)LNc/J;

    move-result-object v0

    iget-wide v1, p0, LNc/I0;->e:J

    iget-object v3, p0, LNc/a;->c:Lib/h;

    invoke-interface {v0, v1, v2, p0, v3}, LNc/J;->k(JLjava/lang/Runnable;Lib/h;)LNc/P;

    move-result-object v0

    new-instance v1, LNc/Q;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, LNc/Q;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {p0, v2, v1, v0}, LNc/E;->t(LNc/j0;ZLNc/n0;I)LNc/P;

    :try_start_0
    instance-of v0, p1, Lkb/a;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p0}, LG5/U3;->f(Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ltb/z;->e(ILjava/lang/Object;)V

    invoke-interface {p1, p0, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v0, LNc/s;

    invoke-direct {v0, v2, p1}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    move-object p1, v0

    :goto_1
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p1, v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1}, LNc/t0;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LNc/E;->e:LQ6/i;

    if-ne v1, v2, :cond_2

    goto :goto_3

    :cond_2
    instance-of v0, v1, LNc/s;

    if-eqz v0, :cond_5

    check-cast v1, LNc/s;

    iget-object v0, v1, LNc/s;->a:Ljava/lang/Throwable;

    instance-of v1, v0, LNc/H0;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, LNc/H0;

    iget-object v1, v1, LNc/H0;->a:LNc/I0;

    if-ne v1, p0, :cond_4

    instance-of p0, p1, LNc/s;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast p1, LNc/s;

    iget-object p0, p1, LNc/s;->a:Ljava/lang/Throwable;

    throw p0

    :cond_4
    throw v0

    :cond_5
    invoke-static {v1}, LNc/E;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    move-object v0, p1

    :goto_3
    return-object v0
.end method

.method public static final G(Lib/c;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, LUc/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LNc/E;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LNc/E;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public static final H(J)J
    .locals 7

    const v0, 0xf4240

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    sget v4, LLc/a;->c:I

    cmp-long v4, p0, v2

    if-lez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v4, v1, :cond_a

    const-wide/32 v4, 0xf423f

    sget-object v6, LLc/c;->NANOSECONDS:LLc/c;

    invoke-static {v4, v5, v6}, LOd/b;->i(JLLc/c;)J

    move-result-wide v4

    invoke-static {p0, p1}, LLc/a;->f(J)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4, v5}, LLc/a;->f(J)Z

    move-result v0

    if-eqz v0, :cond_9

    xor-long v0, p0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v4, v5}, LLc/a;->f(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move-wide p0, v4

    goto :goto_1

    :cond_3
    long-to-int v2, p0

    and-int/2addr v2, v1

    long-to-int v3, v4

    and-int/2addr v3, v1

    if-ne v2, v3, :cond_7

    shr-long/2addr p0, v1

    shr-long v3, v4, v1

    add-long/2addr p0, v3

    if-nez v2, :cond_5

    const-wide v1, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v1, v1, p0

    if-gtz v1, :cond_4

    const-wide v1, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v1, p0, v1

    if-gez v1, :cond_4

    invoke-static {p0, p1}, LOd/b;->c(J)J

    move-result-wide p0

    goto :goto_1

    :cond_4
    int-to-long v0, v0

    div-long/2addr p0, v0

    invoke-static {p0, p1}, LOd/b;->b(J)J

    move-result-wide p0

    goto :goto_1

    :cond_5
    const-wide v1, -0x431bde82d7aL

    cmp-long v1, v1, p0

    if-gtz v1, :cond_6

    const-wide v1, 0x431bde82d7bL

    cmp-long v1, p0, v1

    if-gez v1, :cond_6

    int-to-long v0, v0

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, LOd/b;->c(J)J

    move-result-wide p0

    goto :goto_1

    :cond_6
    invoke-static {p0, p1}, LG5/d3;->h(J)J

    move-result-wide p0

    invoke-static {p0, p1}, LOd/b;->b(J)J

    move-result-wide p0

    goto :goto_1

    :cond_7
    if-ne v2, v1, :cond_8

    shr-long/2addr p0, v1

    shr-long v0, v4, v1

    invoke-static {p0, p1, v0, v1}, LLc/a;->a(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_8
    shr-long v2, v4, v1

    shr-long/2addr p0, v1

    invoke-static {v2, v3, p0, p1}, LLc/a;->a(JJ)J

    move-result-wide p0

    :cond_9
    :goto_1
    invoke-static {p0, p1}, LLc/a;->e(J)J

    move-result-wide v2

    goto :goto_2

    :cond_a
    if-nez v4, :cond_b

    :goto_2
    return-wide v2

    :cond_b
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, LNc/e0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LNc/e0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, LNc/e0;->a:LNc/d0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final J(Lib/c;Lib/h;Ljava/lang/Object;)LNc/L0;
    .locals 2

    instance-of v0, p0, Lkb/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, LNc/M0;->a:LNc/M0;

    invoke-interface {p1, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast p0, Lkb/d;

    :cond_1
    instance-of v0, p0, LNc/K;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lkb/d;->getCallerFrame()Lkb/d;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, LNc/L0;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, LNc/L0;

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, LNc/L0;->k0(Lib/h;Ljava/lang/Object;)V

    :cond_4
    return-object v1
.end method

.method public static final K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, LNc/u;->c:LNc/u;

    invoke-interface {p0, v1, v2}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, LNc/E;->m(Lib/h;Lib/h;Z)Lib/h;

    move-result-object p0

    :goto_0
    invoke-static {p0}, LNc/E;->l(Lib/h;)V

    if-ne p0, v0, :cond_1

    new-instance v0, LUc/w;

    invoke-direct {v0, p2, p0}, LUc/w;-><init>(Lib/c;Lib/h;)V

    invoke-static {v0, v0, p1}, LG5/X2;->e(LUc/w;LUc/w;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object v1, Lib/d;->a:Lib/d;

    invoke-interface {p0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v3

    invoke-interface {v0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    invoke-static {v3, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LNc/L0;

    invoke-direct {v0, p2, p0}, LNc/L0;-><init>(Lib/c;Lib/h;)V

    const/4 p0, 0x0

    iget-object p2, v0, LNc/a;->c:Lib/h;

    invoke-static {p2, p0}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    invoke-static {v0, v0, p1}, LG5/X2;->e(LUc/w;LUc/w;Lsb/n;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p0}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p2, p0}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v0, LNc/K;

    invoke-direct {v0, p2, p0}, LUc/w;-><init>(Lib/c;Lib/h;)V

    invoke-static {p1, v0, v0}, LG5/W2;->d(Lsb/n;LNc/a;LNc/a;)V

    :cond_3
    sget-object p0, LNc/K;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    invoke-virtual {v0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LNc/E;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, LNc/s;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p0, LNc/s;

    iget-object p0, p0, LNc/s;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    :goto_1
    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method

.method public static final L(JLsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    new-instance v0, LNc/I0;

    invoke-direct {v0, p0, p1, p3}, LNc/I0;-><init>(JLkb/c;)V

    invoke-static {v0, p2}, LNc/E;->F(LNc/I0;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0

    :cond_0
    new-instance p0, LNc/H0;

    const/4 p1, 0x0

    const-string p2, "Timed out immediately"

    invoke-direct {p0, p2, p1}, LNc/H0;-><init>(Ljava/lang/String;LNc/I0;)V

    throw p0
.end method

.method public static final M(JLsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, LNc/J0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LNc/J0;

    iget v1, v0, LNc/J0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LNc/J0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LNc/J0;

    invoke-direct {v0, p3}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p3, v0, LNc/J0;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LNc/J0;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, LNc/J0;->a:Ltb/w;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LNc/H0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long p3, p0, v5

    if-gtz p3, :cond_3

    return-object v3

    :cond_3
    new-instance p3, Ltb/w;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    :try_start_1
    iput-object p3, v0, LNc/J0;->a:Ltb/w;

    iput v4, v0, LNc/J0;->c:I

    new-instance v2, LNc/I0;

    invoke-direct {v2, p0, p1, v0}, LNc/I0;-><init>(JLkb/c;)V

    iput-object v2, p3, Ltb/w;->a:Ljava/lang/Object;

    invoke-static {v2, p2}, LNc/E;->F(LNc/I0;Lsb/n;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch LNc/H0; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p3

    :catch_1
    move-exception p1

    move-object p0, p3

    :goto_2
    iget-object p2, p1, LNc/H0;->a:LNc/I0;

    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    if-ne p2, p0, :cond_5

    return-object v3

    :cond_5
    throw p1
.end method

.method public static final N(Lkb/c;)Ljava/lang/Object;
    .locals 7

    invoke-interface {p0}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    invoke-static {v0}, LNc/E;->l(Lib/h;)V

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    instance-of v1, p0, LUc/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p0, LUc/h;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    sget-object v1, Ldb/r;->a:Ldb/r;

    if-nez p0, :cond_1

    :goto_1
    move-object p0, v1

    goto :goto_5

    :cond_1
    iget-object v3, p0, LUc/h;->d:LNc/x;

    invoke-virtual {v3, v0}, LNc/x;->H(Lib/h;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iput-object v1, p0, LUc/h;->f:Ljava/lang/Object;

    iput v5, p0, LNc/L;->c:I

    invoke-virtual {v3, v0, p0}, LNc/x;->G(Lib/h;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2
    new-instance v4, LNc/O0;

    sget-object v6, LNc/O0;->b:LNc/i0;

    invoke-direct {v4, v6}, Lib/a;-><init>(Lib/g;)V

    invoke-interface {v0, v4}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v0

    iput-object v1, p0, LUc/h;->f:Ljava/lang/Object;

    iput v5, p0, LNc/L;->c:I

    invoke-virtual {v3, v0, p0}, LNc/x;->G(Lib/h;Ljava/lang/Runnable;)V

    iget-boolean v0, v4, LNc/O0;->a:Z

    if-eqz v0, :cond_7

    invoke-static {}, LNc/F0;->a()LNc/Y;

    move-result-object v0

    iget-object v3, v0, LNc/Y;->d:Lfb/k;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lfb/k;->isEmpty()Z

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, LNc/Y;->W()Z

    move-result v3

    if-eqz v3, :cond_5

    iput-object v1, p0, LUc/h;->f:Ljava/lang/Object;

    iput v5, p0, LNc/L;->c:I

    invoke-virtual {v0, p0}, LNc/Y;->S(LNc/L;)V

    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v5}, LNc/Y;->V(Z)V

    :try_start_0
    invoke-virtual {p0}, LNc/L;->run()V

    :cond_6
    invoke-virtual {v0}, LNc/Y;->d0()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_6

    :goto_3
    invoke-virtual {v0, v5}, LNc/Y;->K(Z)V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {p0, v3, v2}, LNc/L;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v5}, LNc/Y;->K(Z)V

    throw p0

    :cond_7
    :goto_4
    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    :goto_5
    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, v0, :cond_8

    return-object p0

    :cond_8
    return-object v1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static b()LNc/q;
    .locals 2

    new-instance v0, LNc/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LNc/t0;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LNc/t0;->S(LNc/j0;)V

    return-object v0
.end method

.method public static final c(Lib/h;)LUc/e;
    .locals 2

    new-instance v0, LUc/e;

    sget-object v1, LNc/i0;->a:LNc/i0;

    invoke-interface {p0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object v1

    invoke-interface {p0, v1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, LUc/e;-><init>(Lib/h;)V

    return-object v0
.end method

.method public static d()LNc/m0;
    .locals 2

    new-instance v0, LNc/m0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LNc/m0;-><init>(LNc/j0;)V

    return-object v0
.end method

.method public static e()LNc/E0;
    .locals 2

    new-instance v0, LNc/E0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LNc/m0;-><init>(LNc/j0;)V

    return-object v0
.end method

.method public static f(LNc/B;LNc/A;Lsb/n;I)LNc/I;
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    sget-object p1, Lib/i;->a:Lib/i;

    :cond_0
    sget-object p3, LNc/D;->DEFAULT:LNc/D;

    invoke-static {p0, p1}, LNc/E;->z(LNc/B;Lib/h;)Lib/h;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LNc/D;->LAZY:LNc/D;

    if-ne p3, p1, :cond_1

    new-instance p1, LNc/u0;

    invoke-direct {p1, p0, p2}, LNc/u0;-><init>(Lib/h;Lsb/n;)V

    goto :goto_0

    :cond_1
    new-instance p1, LNc/I;

    invoke-direct {p1, p0, v0}, LNc/a;-><init>(Lib/h;Z)V

    :goto_0
    invoke-virtual {p1, p3, p1, p2}, LNc/a;->i0(LNc/D;LNc/a;Lsb/n;)V

    return-object p1
.end method

.method public static final g(Ljava/util/ArrayList;Lkb/i;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    new-instance v1, LNc/e;

    const/4 v2, 0x0

    new-array v3, v2, [LNc/H;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LNc/H;

    invoke-direct {v1, p0}, LNc/e;-><init>([LNc/H;)V

    new-instance v3, LNc/k;

    invoke-static {p1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p1

    invoke-direct {v3, v0, p1}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v3}, LNc/k;->q()V

    array-length p1, p0

    new-array v4, p1, [LNc/c;

    move v5, v2

    :goto_0
    if-ge v5, p1, :cond_1

    aget-object v6, p0, v5

    move-object v7, v6

    check-cast v7, LNc/t0;

    invoke-virtual {v7}, LNc/t0;->start()Z

    new-instance v7, LNc/c;

    invoke-direct {v7, v1, v3}, LNc/c;-><init>(LNc/e;LNc/k;)V

    const/4 v8, 0x3

    invoke-static {v6, v2, v7, v8}, LNc/E;->t(LNc/j0;ZLNc/n0;I)LNc/P;

    move-result-object v6

    iput-object v6, v7, LNc/c;->f:LNc/P;

    aput-object v7, v4, v5

    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    new-instance p0, LNc/d;

    invoke-direct {p0, v4}, LNc/d;-><init>([LNc/c;)V

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object v1, v4, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, LNc/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    sget-object p1, LNc/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, LNc/A0;

    if-nez p1, :cond_3

    invoke-virtual {p0}, LNc/d;->a()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p0}, LNc/k;->v(LNc/A0;)V

    :goto_2
    invoke-virtual {v3}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method

.method public static final h(LNc/B;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object v0

    sget-object v1, LNc/i0;->a:LNc/i0;

    invoke-interface {v0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    check-cast v0, LNc/j0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final i(Lib/h;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, LNc/i0;->a:LNc/i0;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final j(Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, LUc/w;

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LUc/w;-><init>(Lib/c;Lib/h;)V

    invoke-static {v0, v0, p0}, LG5/X2;->e(LUc/w;LUc/w;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method

.method public static final k(JLkb/i;)Ljava/lang/Object;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, LNc/k;

    invoke-static {p2}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, p0, v2

    if-gez p2, :cond_1

    iget-object p2, v0, LNc/k;->e:Lib/h;

    invoke-static {p2}, LNc/E;->o(Lib/h;)LNc/J;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0}, LNc/J;->d(JLNc/k;)V

    :cond_1
    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final l(Lib/h;)V
    .locals 1

    sget-object v0, LNc/i0;->a:LNc/i0;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, LNc/j0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LNc/j0;->f()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final m(Lib/h;Lib/h;Z)Lib/h;
    .locals 4

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, LNc/u;->c:LNc/u;

    invoke-interface {p0, p2, v0}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, p2, v0}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lib/i;->a:Lib/i;

    new-instance v1, LNc/u;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, LNc/u;-><init>(II)V

    invoke-interface {p0, v0, v1}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lib/h;

    if-eqz p2, :cond_1

    check-cast p1, Lib/h;

    sget-object p2, LNc/u;->b:LNc/u;

    invoke-interface {p1, v0, p2}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    check-cast p1, Lib/h;

    invoke-interface {p0, p1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ljava/util/concurrent/Executor;)LNc/x;
    .locals 1

    instance-of v0, p0, LNc/M;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LNc/M;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, LNc/M;->a:LNc/x;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, LNc/a0;

    invoke-direct {v0, p0}, LNc/a0;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method

.method public static final o(Lib/h;)LNc/J;
    .locals 1

    sget-object v0, Lib/d;->a:Lib/d;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    instance-of v0, p0, LNc/J;

    if-eqz v0, :cond_0

    check-cast p0, LNc/J;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, LNc/G;->a:LNc/J;

    :cond_1
    return-object p0
.end method

.method public static final p(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Lib/h;)LNc/j0;
    .locals 3

    sget-object v0, LNc/i0;->a:LNc/i0;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    check-cast v0, LNc/j0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current context doesn\'t contain Job in it: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final r(Lib/c;)LNc/k;
    .locals 6

    instance-of v0, p0, LUc/h;

    if-nez v0, :cond_0

    new-instance v0, LNc/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LNc/k;-><init>(ILib/c;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, LUc/h;

    :cond_1
    :goto_0
    sget-object v1, LUc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, LUc/a;->d:LQ6/i;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_1

    :cond_2
    instance-of v5, v2, LNc/k;

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v2, LNc/k;

    :goto_1
    if-eqz v2, :cond_6

    sget-object v0, LNc/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, LNc/r;

    if-eqz v3, :cond_4

    check-cast v1, LNc/r;

    iget-object v1, v1, LNc/r;->d:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v2}, LNc/k;->m()V

    goto :goto_2

    :cond_4
    const v1, 0x1fffffff

    sget-object v3, LNc/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, LNc/b;->a:LNc/b;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v2

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    new-instance v0, LNc/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LNc/k;-><init>(ILib/c;)V

    return-object v0

    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v2, :cond_3

    goto :goto_0

    :cond_8
    if-eq v2, v3, :cond_1

    instance-of v1, v2, Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final s(Lib/h;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    sget-object v0, LNc/y;->a:LNc/y;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    check-cast v0, LNc/z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, LNc/z;->handleException(Lib/h;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LUc/a;->e(Lib/h;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_1
    invoke-static {p0, p1}, LUc/a;->e(Lib/h;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static t(LNc/j0;ZLNc/n0;I)LNc/P;
    .locals 10

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    instance-of p3, p0, LNc/t0;

    if-eqz p3, :cond_2

    check-cast p0, LNc/t0;

    invoke-virtual {p0, p1, v1, p2}, LNc/t0;->T(ZZLNc/g0;)LNc/P;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p3, LJ2/p;

    const-string v7, "invoke(Ljava/lang/Throwable;)V"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, LNc/g0;

    const-string v6, "invoke"

    const/4 v9, 0x1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, LJ2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p0, p1, v1, p3}, LNc/j0;->B(ZZLJ2/p;)LNc/P;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final u(LNc/B;)Z
    .locals 1

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    sget-object v0, LNc/i0;->a:LNc/i0;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LNc/j0;->b()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final v(Lib/h;)Z
    .locals 1

    sget-object v0, LNc/i0;->a:LNc/i0;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LNc/j0;->b()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final w(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final x(LNc/B;Lib/h;LNc/D;Lsb/n;)LNc/C0;
    .locals 1

    invoke-static {p0, p1}, LNc/E;->z(LNc/B;Lib/h;)Lib/h;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LNc/D;->LAZY:LNc/D;

    if-ne p2, p1, :cond_0

    new-instance p1, LNc/v0;

    invoke-direct {p1, p0, p3}, LNc/v0;-><init>(Lib/h;Lsb/n;)V

    goto :goto_0

    :cond_0
    new-instance p1, LNc/C0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LNc/a;-><init>(Lib/h;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, LNc/a;->i0(LNc/D;LNc/a;Lsb/n;)V

    return-object p1
.end method

.method public static synthetic y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lib/i;->a:Lib/i;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, LNc/D;->DEFAULT:LNc/D;

    :cond_1
    invoke-static {p0, p1, p2, p3}, LNc/E;->x(LNc/B;Lib/h;LNc/D;Lsb/n;)LNc/C0;

    move-result-object p0

    return-object p0
.end method

.method public static final z(LNc/B;Lib/h;)Lib/h;
    .locals 1

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LNc/E;->m(Lib/h;Lib/h;Z)Lib/h;

    move-result-object p0

    sget-object p1, LNc/N;->a:LWc/f;

    if-eq p0, p1, :cond_0

    sget-object v0, Lib/d;->a:Lib/d;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p0

    :cond_0
    return-object p0
.end method
