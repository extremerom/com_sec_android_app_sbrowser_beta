.class public LNc/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/j0;
.implements LNc/B0;


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state$volatile"

    const-class v1, LNc/t0;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LNc/t0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, LNc/E;->j:LNc/S;

    goto :goto_0

    :cond_0
    sget-object p1, LNc/E;->i:LNc/S;

    :goto_0
    iput-object p1, p0, LNc/t0;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static Y(LUc/l;)LNc/o;
    .locals 2

    :goto_0
    invoke-virtual {p0}, LUc/l;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LUc/l;->e()LUc/l;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, LUc/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LUc/l;

    :goto_1
    invoke-virtual {p0}, LUc/l;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LUc/l;

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LUc/l;->h()LUc/l;

    move-result-object p0

    invoke-virtual {p0}, LUc/l;->i()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, LNc/o;

    if-eqz v0, :cond_3

    check-cast p0, LNc/o;

    return-object p0

    :cond_3
    instance-of v0, p0, LNc/x0;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, LNc/q0;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    check-cast p0, LNc/q0;

    invoke-virtual {p0}, LNc/q0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LNc/q0;->e()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p0, LNc/d0;

    if-eqz v0, :cond_3

    check-cast p0, LNc/d0;

    invoke-interface {p0}, LNc/d0;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    :cond_3
    instance-of p0, p0, LNc/s;

    if-eqz p0, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Z
    .locals 9

    sget-object v0, LNc/E;->d:LQ6/i;

    invoke-virtual {p0}, LNc/t0;->N()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LNc/d0;

    if-eqz v1, :cond_2

    instance-of v1, v0, LNc/q0;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LNc/q0;

    invoke-virtual {v1}, LNc/q0;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, LNc/s;

    invoke-virtual {p0, p1}, LNc/t0;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v2, v4}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, LNc/t0;->f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LNc/E;->f:LQ6/i;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, LNc/E;->d:LQ6/i;

    :goto_1
    sget-object v1, LNc/E;->e:LQ6/i;

    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    sget-object v1, LNc/E;->d:LQ6/i;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    :goto_2
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, LNc/q0;

    if-eqz v5, :cond_a

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, LNc/q0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, LNc/q0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, LNc/E;->h:LQ6/i;

    if-ne v5, v6, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    if-eqz v5, :cond_6

    sget-object p1, LNc/E;->g:LQ6/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :goto_4
    move-object v0, p1

    goto/16 :goto_7

    :cond_6
    :try_start_1
    move-object v5, v4

    check-cast v5, LNc/q0;

    invoke-virtual {v5}, LNc/q0;->d()Z

    move-result v5

    if-nez v1, :cond_7

    invoke-virtual {p0, p1}, LNc/t0;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_5
    move-object p1, v4

    check-cast p1, LNc/q0;

    invoke-virtual {p1, v1}, LNc/q0;->a(Ljava/lang/Throwable;)V

    move-object p1, v4

    check-cast p1, LNc/q0;

    invoke-virtual {p1}, LNc/q0;->c()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_8

    move-object v0, p1

    :cond_8
    monitor-exit v4

    if-eqz v0, :cond_9

    check-cast v4, LNc/q0;

    iget-object p1, v4, LNc/q0;->a:LNc/x0;

    invoke-virtual {p0, p1, v0}, LNc/t0;->Z(LNc/x0;Ljava/lang/Throwable;)V

    :cond_9
    sget-object p1, LNc/E;->d:LQ6/i;

    goto :goto_4

    :goto_6
    monitor-exit v4

    throw p0

    :cond_a
    instance-of v5, v4, LNc/d0;

    if-eqz v5, :cond_11

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, LNc/t0;->I(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_b
    move-object v5, v4

    check-cast v5, LNc/d0;

    invoke-interface {v5}, LNc/d0;->b()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, v5}, LNc/t0;->O(LNc/d0;)LNc/x0;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    new-instance v7, LNc/q0;

    invoke-direct {v7, v6, v1}, LNc/q0;-><init>(LNc/x0;Ljava/lang/Throwable;)V

    :cond_d
    sget-object v4, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p0, v6, v1}, LNc/t0;->Z(LNc/x0;Ljava/lang/Throwable;)V

    sget-object p1, LNc/E;->d:LQ6/i;

    goto :goto_4

    :cond_e
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v5, :cond_d

    goto/16 :goto_2

    :cond_f
    new-instance v5, LNc/s;

    invoke-direct {v5, v2, v1}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, v4, v5}, LNc/t0;->f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, LNc/E;->d:LQ6/i;

    if-eq v5, v6, :cond_10

    sget-object v4, LNc/E;->f:LQ6/i;

    if-eq v5, v4, :cond_4

    move-object v0, v5

    goto :goto_7

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot happen in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    sget-object p1, LNc/E;->g:LQ6/i;

    goto/16 :goto_4

    :cond_12
    :goto_7
    sget-object p1, LNc/E;->d:LQ6/i;

    if-ne v0, p1, :cond_13

    :goto_8
    move v2, v3

    goto :goto_9

    :cond_13
    sget-object p1, LNc/E;->e:LQ6/i;

    if-ne v0, p1, :cond_14

    goto :goto_8

    :cond_14
    sget-object p1, LNc/E;->g:LQ6/i;

    if-ne v0, p1, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {p0, v0}, LNc/t0;->x(Ljava/lang/Object;)V

    goto :goto_8

    :goto_9
    return v2
.end method

.method public final B(ZZLJ2/p;)LNc/P;
    .locals 1

    new-instance v0, LNc/f0;

    invoke-direct {v0, p3}, LNc/f0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, p2, v0}, LNc/t0;->T(ZZLNc/g0;)LNc/P;

    move-result-object p0

    return-object p0
.end method

.method public C(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, LNc/t0;->A(Ljava/lang/Object;)Z

    return-void
.end method

.method public final D(Ljava/lang/Throwable;)Z
    .locals 3

    invoke-virtual {p0}, LNc/t0;->U()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    sget-object v2, LNc/t0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/n;

    if-eqz p0, :cond_4

    sget-object v2, LNc/z0;->a:LNc/z0;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, LNc/n;->d(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final E()Z
    .locals 1

    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LNc/s;

    if-nez v0, :cond_1

    instance-of v0, p0, LNc/q0;

    if-eqz v0, :cond_0

    check-cast p0, LNc/q0;

    invoke-virtual {p0}, LNc/q0;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public F()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public G(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, LNc/t0;->A(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LNc/t0;->M()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final H(LNc/d0;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, LNc/t0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNc/n;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LNc/P;->a()V

    sget-object v1, LNc/z0;->a:LNc/z0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p2, LNc/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, LNc/s;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, LNc/s;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, LNc/n0;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, LNc/n0;

    invoke-interface {v0, p2}, LNc/g0;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    new-instance v0, LI5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LNc/t0;->R(LI5/b;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, LNc/d0;->getList()LNc/x0;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, LUc/l;->g()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LUc/l;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, LNc/n0;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, LNc/n0;

    :try_start_1
    invoke-interface {v4, p2}, LNc/g0;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, LI5/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, LUc/l;->h()LUc/l;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, LNc/t0;->R(LI5/b;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final I(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    instance-of p0, p1, Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_0
    check-cast p1, LNc/B0;

    check-cast p1, LNc/t0;

    invoke-virtual {p1}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LNc/q0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LNc/q0;

    invoke-virtual {v0}, LNc/q0;->c()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, LNc/s;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, LNc/s;

    iget-object v0, v0, LNc/s;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    instance-of v0, p0, LNc/d0;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CancellationException;

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, LNc/k0;

    invoke-static {p0}, LNc/t0;->e0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Parent job is "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1}, LNc/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LNc/t0;)V

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final J(LNc/q0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, LNc/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LNc/s;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, LNc/s;->a:Ljava/lang/Throwable;

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, LNc/q0;->d()Z

    invoke-virtual {p1, v1}, LNc/q0;->f(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LNc/t0;->L(LNc/q0;Ljava/util/ArrayList;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eq v5, v2, :cond_3

    if-eq v5, v2, :cond_3

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_3

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2, v5}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit p1

    const/4 v0, 0x0

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, LNc/s;

    invoke-direct {p2, v0, v2}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, LNc/t0;->D(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v2}, LNc/t0;->Q(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, LNc/s;

    sget-object v2, LNc/s;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_8
    invoke-virtual {p0, p2}, LNc/t0;->a0(Ljava/lang/Object;)V

    sget-object v0, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, LNc/d0;

    if-eqz v1, :cond_9

    new-instance v1, LNc/e0;

    move-object v2, p2

    check-cast v2, LNc/d0;

    invoke-direct {v1, v2}, LNc/e0;-><init>(LNc/d0;)V

    goto :goto_4

    :cond_9
    move-object v1, p2

    :cond_a
    :goto_4
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_a

    :goto_5
    invoke-virtual {p0, p1, p2}, LNc/t0;->H(LNc/d0;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final K()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LNc/d0;

    if-nez v0, :cond_1

    instance-of v0, p0, LNc/s;

    if-nez v0, :cond_0

    invoke-static {p0}, LNc/E;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, LNc/s;

    iget-object p0, p0, LNc/s;->a:Ljava/lang/Throwable;

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This job has not completed yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L(LNc/q0;Ljava/util/ArrayList;)Ljava/lang/Throwable;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LNc/q0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LNc/k0;

    invoke-virtual {p0}, LNc/t0;->F()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, LNc/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LNc/t0;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    instance-of p1, p0, LNc/H0;

    if-eqz p1, :cond_7

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    if-eq v0, p0, :cond_5

    instance-of v0, v0, LNc/H0;

    if-eqz v0, :cond_5

    move-object v1, p2

    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p0
.end method

.method public M()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public N()Z
    .locals 0

    instance-of p0, p0, LNc/q;

    return p0
.end method

.method public final O(LNc/d0;)LNc/x0;
    .locals 2

    invoke-interface {p1}, LNc/d0;->getList()LNc/x0;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, LNc/S;

    if-eqz v0, :cond_0

    new-instance v0, LNc/x0;

    invoke-direct {v0}, LUc/l;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LNc/n0;

    if-eqz v0, :cond_1

    check-cast p1, LNc/n0;

    invoke-virtual {p0, p1}, LNc/t0;->c0(LNc/n0;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State should have list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final P()Ljava/lang/Object;
    .locals 2

    :goto_0
    sget-object v0, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LUc/t;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, LUc/t;

    invoke-virtual {v0, p0}, LUc/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public Q(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public R(LI5/b;)V
    .locals 0

    throw p1
.end method

.method public final S(LNc/j0;)V
    .locals 3

    sget-object v0, LNc/z0;->a:LNc/z0;

    sget-object v1, LNc/t0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-nez p1, :cond_0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, LNc/j0;->start()Z

    invoke-interface {p1, p0}, LNc/j0;->o(LNc/t0;)LNc/n;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, LNc/t0;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, LNc/P;->a()V

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final T(ZZLNc/g0;)LNc/P;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p3, LNc/l0;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, LNc/l0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, LNc/h0;

    invoke-direct {v1, p3}, LNc/h0;-><init>(LNc/g0;)V

    goto :goto_2

    :cond_1
    instance-of v1, p3, LNc/n0;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, LNc/n0;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, LNc/Q;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p3}, LNc/Q;-><init>(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    iput-object p0, v1, LNc/n0;->d:LNc/t0;

    :cond_5
    :goto_3
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, LNc/S;

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, LNc/S;

    iget-boolean v4, v3, LNc/S;->a:Z

    if-eqz v4, :cond_8

    sget-object v4, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_6

    goto :goto_3

    :cond_8
    new-instance v2, LNc/x0;

    invoke-direct {v2}, LUc/l;-><init>()V

    iget-boolean v4, v3, LNc/S;->a:Z

    if-eqz v4, :cond_9

    move-object v4, v2

    goto :goto_4

    :cond_9
    new-instance v4, LNc/c0;

    invoke-direct {v4, v2}, LNc/c0;-><init>(LNc/x0;)V

    :cond_a
    :goto_4
    sget-object v2, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_a

    goto :goto_3

    :cond_c
    instance-of v3, v2, LNc/d0;

    if-eqz v3, :cond_15

    move-object v3, v2

    check-cast v3, LNc/d0;

    invoke-interface {v3}, LNc/d0;->getList()LNc/x0;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v2, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LNc/n0;

    invoke-virtual {p0, v2}, LNc/t0;->c0(LNc/n0;)V

    goto :goto_3

    :cond_d
    sget-object v4, LNc/z0;->a:LNc/z0;

    if-eqz p1, :cond_12

    instance-of v5, v2, LNc/q0;

    if-eqz v5, :cond_12

    monitor-enter v2

    :try_start_0
    move-object v5, v2

    check-cast v5, LNc/q0;

    invoke-virtual {v5}, LNc/q0;->c()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_e

    instance-of v6, p3, LNc/o;

    if-eqz v6, :cond_11

    move-object v6, v2

    check-cast v6, LNc/q0;

    invoke-virtual {v6}, LNc/q0;->e()Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_e
    :goto_5
    move-object v4, v2

    check-cast v4, LNc/d0;

    invoke-virtual {p0, v4, v3, v1}, LNc/t0;->w(LNc/d0;LNc/x0;LNc/n0;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_f

    monitor-exit v2

    goto/16 :goto_3

    :cond_f
    if-nez v5, :cond_10

    monitor-exit v2

    return-object v1

    :cond_10
    move-object v4, v1

    :cond_11
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2

    throw p0

    :cond_12
    move-object v5, v0

    :goto_7
    if-eqz v5, :cond_14

    if-eqz p2, :cond_13

    invoke-interface {p3, v5}, LNc/g0;->c(Ljava/lang/Throwable;)V

    :cond_13
    return-object v4

    :cond_14
    check-cast v2, LNc/d0;

    invoke-virtual {p0, v2, v3, v1}, LNc/t0;->w(LNc/d0;LNc/x0;LNc/n0;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_15
    if-eqz p2, :cond_18

    instance-of p0, v2, LNc/s;

    if-eqz p0, :cond_16

    check-cast v2, LNc/s;

    goto :goto_8

    :cond_16
    move-object v2, v0

    :goto_8
    if-eqz v2, :cond_17

    iget-object v0, v2, LNc/s;->a:Ljava/lang/Throwable;

    :cond_17
    invoke-interface {p3, v0}, LNc/g0;->c(Ljava/lang/Throwable;)V

    :cond_18
    sget-object p0, LNc/z0;->a:LNc/z0;

    return-object p0
.end method

.method public U()Z
    .locals 0

    instance-of p0, p0, LNc/f;

    return p0
.end method

.method public final V(Ljava/lang/Object;)Z
    .locals 3

    :cond_0
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LNc/t0;->f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LNc/E;->d:LQ6/i;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v1, LNc/E;->e:LQ6/i;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    sget-object v1, LNc/E;->f:LQ6/i;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, LNc/t0;->x(Ljava/lang/Object;)V

    return v2
.end method

.method public final W(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LNc/t0;->f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LNc/E;->d:LQ6/i;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, LNc/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, LNc/s;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p1, LNc/s;->a:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, LNc/E;->f:LQ6/i;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Z(LNc/x0;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, LUc/l;->g()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LUc/l;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, LNc/l0;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, LNc/n0;

    :try_start_0
    invoke-interface {v2, p2}, LNc/g0;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, LI5/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, LUc/l;->h()LUc/l;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, LNc/t0;->R(LI5/b;)V

    :cond_3
    invoke-virtual {p0, p2}, LNc/t0;->D(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, LNc/k0;

    invoke-virtual {p0}, LNc/t0;->F()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LNc/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LNc/t0;)V

    :cond_0
    invoke-virtual {p0, p1}, LNc/t0;->C(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public a0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LNc/d0;

    if-eqz v0, :cond_0

    check-cast p0, LNc/d0;

    invoke-interface {p0}, LNc/d0;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b0()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LNc/t0;->K()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c0(LNc/n0;)V
    .locals 3

    new-instance v0, LNc/x0;

    invoke-direct {v0}, LUc/l;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LUc/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, LUc/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, LUc/l;->g()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, LUc/l;->f(LUc/l;)V

    :goto_1
    invoke-virtual {p1}, LUc/l;->h()LUc/l;

    move-result-object v2

    :cond_1
    sget-object v0, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :goto_2
    return-void

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0
.end method

.method public final d0(Ljava/lang/Object;)I
    .locals 5

    instance-of v0, p1, LNc/S;

    const/4 v1, 0x1

    const/4 v2, -0x1

    sget-object v3, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, LNc/S;

    iget-boolean v0, v0, LNc/S;->a:Z

    if-eqz v0, :cond_0

    return v4

    :cond_0
    sget-object v0, LNc/E;->j:LNc/S;

    :cond_1
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, LNc/t0;->b0()V

    return v1

    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_1

    return v2

    :cond_3
    instance-of v0, p1, LNc/c0;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, LNc/c0;

    iget-object v0, v0, LNc/c0;->a:LNc/x0;

    :cond_4
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, LNc/t0;->b0()V

    return v1

    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_4

    return v2

    :cond_6
    return v4
.end method

.method public final f()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LNc/q0;

    const/4 v2, 0x0

    const-string v3, "Job is still new or active: "

    if-eqz v1, :cond_3

    check-cast v0, LNc/q0;

    invoke-virtual {v0}, LNc/q0;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v2, :cond_6

    new-instance v2, LNc/k0;

    if-nez v1, :cond_1

    invoke-virtual {p0}, LNc/t0;->F()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, LNc/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LNc/t0;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, LNc/d0;

    if-nez v1, :cond_7

    instance-of v1, v0, LNc/s;

    if-eqz v1, :cond_5

    check-cast v0, LNc/s;

    iget-object v0, v0, LNc/s;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_4
    if-nez v2, :cond_6

    new-instance v1, LNc/k0;

    invoke-virtual {p0}, LNc/t0;->F()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, LNc/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LNc/t0;)V

    move-object v2, v1

    goto :goto_0

    :cond_5
    new-instance v0, LNc/k0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, LNc/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LNc/t0;)V

    move-object v2, v0

    :cond_6
    :goto_0
    return-object v2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, LNc/d0;

    if-nez v0, :cond_0

    sget-object p0, LNc/E;->d:LQ6/i;

    return-object p0

    :cond_0
    instance-of v0, p1, LNc/S;

    if-nez v0, :cond_1

    instance-of v0, p1, LNc/n0;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, LNc/o;

    if-nez v0, :cond_5

    instance-of v0, p2, LNc/s;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, LNc/d0;

    instance-of p1, p2, LNc/d0;

    if-eqz p1, :cond_2

    new-instance p1, LNc/e0;

    move-object v1, p2

    check-cast v1, LNc/d0;

    invoke-direct {p1, v1}, LNc/e0;-><init>(LNc/d0;)V

    move-object v1, p1

    goto :goto_0

    :cond_2
    move-object v1, p2

    :cond_3
    :goto_0
    sget-object p1, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, LNc/t0;->a0(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, LNc/t0;->H(LNc/d0;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_3

    sget-object p0, LNc/E;->f:LQ6/i;

    return-object p0

    :cond_5
    check-cast p1, LNc/d0;

    invoke-virtual {p0, p1}, LNc/t0;->O(LNc/d0;)LNc/x0;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p0, LNc/E;->f:LQ6/i;

    goto/16 :goto_7

    :cond_6
    instance-of v1, p1, LNc/q0;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, LNc/q0;

    goto :goto_1

    :cond_7
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_8

    new-instance v1, LNc/q0;

    invoke-direct {v1, v0, v2}, LNc/q0;-><init>(LNc/x0;Ljava/lang/Throwable;)V

    :cond_8
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, LNc/q0;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object p0, LNc/E;->d:LQ6/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto/16 :goto_7

    :cond_9
    :try_start_1
    sget-object v3, LNc/q0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eq v1, p1, :cond_c

    sget-object v3, LNc/t0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_a

    sget-object p0, LNc/E;->f:LQ6/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_7

    :cond_c
    :goto_2
    :try_start_2
    invoke-virtual {v1}, LNc/q0;->d()Z

    move-result v3

    instance-of v5, p2, LNc/s;

    if-eqz v5, :cond_d

    move-object v5, p2

    check-cast v5, LNc/s;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_d
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_e

    iget-object v5, v5, LNc/s;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, LNc/q0;->a(Ljava/lang/Throwable;)V

    :cond_e
    invoke-virtual {v1}, LNc/q0;->c()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    move-object v5, v2

    :goto_4
    monitor-exit v1

    if-eqz v5, :cond_10

    invoke-virtual {p0, v0, v5}, LNc/t0;->Z(LNc/x0;Ljava/lang/Throwable;)V

    :cond_10
    instance-of v0, p1, LNc/o;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, LNc/o;

    goto :goto_5

    :cond_11
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_12

    invoke-interface {p1}, LNc/d0;->getList()LNc/x0;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, LNc/t0;->Y(LUc/l;)LNc/o;

    move-result-object v2

    goto :goto_6

    :cond_12
    move-object v2, v0

    :cond_13
    :goto_6
    if-eqz v2, :cond_16

    :cond_14
    iget-object p1, v2, LNc/o;->e:LNc/t0;

    new-instance v0, LNc/p0;

    invoke-direct {v0, p0, v1, v2, p2}, LNc/p0;-><init>(LNc/t0;LNc/q0;LNc/o;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v4}, LNc/E;->t(LNc/j0;ZLNc/n0;I)LNc/P;

    move-result-object p1

    sget-object v0, LNc/z0;->a:LNc/z0;

    if-eq p1, v0, :cond_15

    sget-object p0, LNc/E;->e:LQ6/i;

    goto :goto_7

    :cond_15
    invoke-static {v2}, LNc/t0;->Y(LUc/l;)LNc/o;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_16
    invoke-virtual {p0, v1, p2}, LNc/t0;->J(LNc/q0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    return-object p0

    :goto_8
    monitor-exit v1

    throw p0
.end method

.method public final fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lib/g;)Lib/f;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->e(Lib/f;Lib/g;)Lib/f;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Lib/g;
    .locals 0

    sget-object p0, LNc/i0;->a:LNc/i0;

    return-object p0
.end method

.method public final getParent()LNc/j0;
    .locals 1

    sget-object v0, LNc/t0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/n;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LNc/n;->getParent()LNc/j0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h(Lkb/c;)Ljava/lang/Object;
    .locals 4

    :cond_0
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LNc/d0;

    sget-object v2, Ldb/r;->a:Ldb/r;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object p0

    invoke-static {p0}, LNc/E;->l(Lib/h;)V

    return-object v2

    :cond_1
    invoke-virtual {p0, v0}, LNc/t0;->d0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, LNc/k;

    invoke-static {p1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v0}, LNc/k;->q()V

    new-instance p1, LNc/Q;

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, LNc/Q;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-static {p0, v1, p1, v3}, LNc/E;->t(LNc/j0;ZLNc/n0;I)LNc/P;

    move-result-object p0

    new-instance p1, LNc/h;

    const/4 v1, 0x2

    invoke-direct {p1, v1, p0}, LNc/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, LNc/k;->v(LNc/A0;)V

    invoke-virtual {v0}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v2
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, LNc/d0;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final minusKey(Lib/g;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->g(Lib/f;Lib/g;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final o(LNc/t0;)LNc/n;
    .locals 2

    new-instance v0, LNc/o;

    invoke-direct {v0, p1}, LNc/o;-><init>(LNc/t0;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, p1}, LNc/E;->t(LNc/j0;ZLNc/n0;I)LNc/P;

    move-result-object p0

    check-cast p0, LNc/n;

    return-object p0
.end method

.method public final plus(Lib/h;)Lib/h;
    .locals 0

    invoke-static {p0, p1}, LG5/P3;->h(Lib/f;Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lsb/k;)LNc/P;
    .locals 2

    new-instance v0, LNc/f0;

    invoke-direct {v0, p1}, LNc/f0;-><init>(Lsb/k;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, LNc/t0;->T(ZZLNc/g0;)LNc/P;

    move-result-object p0

    return-object p0
.end method

.method public final start()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LNc/t0;->d0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LNc/t0;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LNc/t0;->e0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LNc/E;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w(LNc/d0;LNc/x0;LNc/n0;)Z
    .locals 5

    new-instance v0, LNc/r0;

    invoke-direct {v0, p3, p0, p1}, LNc/r0;-><init>(LNc/n0;LNc/t0;LNc/d0;)V

    :goto_0
    invoke-virtual {p2}, LUc/l;->e()LUc/l;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p1, LUc/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LUc/l;

    :goto_1
    invoke-virtual {p0}, LUc/l;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LUc/l;

    goto :goto_1

    :cond_1
    :goto_2
    sget-object p1, LUc/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, LUc/l;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, LNc/r0;->c:LNc/x0;

    :cond_2
    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, LUc/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    move p0, v4

    goto :goto_3

    :cond_3
    move p0, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_2

    move p0, v2

    :goto_3
    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_6

    goto :goto_0

    :cond_5
    move v2, v4

    :cond_6
    return v2
.end method

.method public x(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public y(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, LNc/t0;->x(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Lkb/c;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p0}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LNc/d0;

    if-nez v2, :cond_2

    instance-of p0, v1, LNc/s;

    if-nez p0, :cond_1

    invoke-static {v1}, LNc/E;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v1, LNc/s;

    iget-object p0, v1, LNc/s;->a:Ljava/lang/Throwable;

    throw p0

    :cond_2
    invoke-virtual {p0, v1}, LNc/t0;->d0(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, LNc/o0;

    invoke-static {p1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p1

    invoke-direct {v1, p1, p0}, LNc/o0;-><init>(Lib/c;LNc/t0;)V

    invoke-virtual {v1}, LNc/k;->q()V

    new-instance p1, LNc/Q;

    invoke-direct {p1, v0, v1}, LNc/Q;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p0, v2, p1, v3}, LNc/E;->t(LNc/j0;ZLNc/n0;I)LNc/P;

    move-result-object p0

    new-instance p1, LNc/h;

    invoke-direct {p1, v0, p0}, LNc/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, LNc/k;->v(LNc/A0;)V

    invoke-virtual {v1}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method
