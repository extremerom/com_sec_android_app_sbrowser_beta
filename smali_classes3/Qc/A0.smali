.class public final LQc/A0;
.super LRc/b;
.source "SourceFile"

# interfaces
.implements LQc/f0;
.implements LQc/h;
.implements LRc/D;


# static fields
.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, LQc/A0;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LQc/A0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/A0;->_state$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LQc/A0;->j(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Lib/h;ILPc/a;)LQc/h;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, LPc/a;->DROP_OLDEST:LPc/a;

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, LQc/n0;->r(LQc/i0;Lib/h;ILPc/a;)LQc/h;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, LQc/z0;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, LQc/z0;

    iget v4, v3, LQc/z0;->h:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, LQc/z0;->h:I

    goto :goto_0

    :cond_0
    new-instance v3, LQc/z0;

    invoke-direct {v3, v1, v2}, LQc/z0;-><init>(LQc/A0;Lib/c;)V

    :goto_0
    iget-object v2, v3, LQc/z0;->f:Ljava/lang/Object;

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v3, LQc/z0;->h:I

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v3, LQc/z0;->e:Ljava/lang/Object;

    iget-object v1, v3, LQc/z0;->d:LNc/j0;

    iget-object v5, v3, LQc/z0;->c:LQc/B0;

    iget-object v10, v3, LQc/z0;->b:LQc/i;

    iget-object v11, v3, LQc/z0;->a:LQc/A0;

    :try_start_0
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    move-object v1, v11

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v11

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, LQc/z0;->e:Ljava/lang/Object;

    iget-object v1, v3, LQc/z0;->d:LNc/j0;

    iget-object v5, v3, LQc/z0;->c:LQc/B0;

    iget-object v10, v3, LQc/z0;->b:LQc/i;

    iget-object v11, v3, LQc/z0;->a:LQc/A0;

    :try_start_1
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object v5, v3, LQc/z0;->c:LQc/B0;

    iget-object v0, v3, LQc/z0;->b:LQc/i;

    iget-object v1, v3, LQc/z0;->a:LQc/A0;

    :try_start_2
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_4
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, LRc/b;->c()LRc/d;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LQc/B0;

    :try_start_3
    instance-of v2, v0, LQc/D0;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, LQc/D0;

    iput-object v1, v3, LQc/z0;->a:LQc/A0;

    iput-object v0, v3, LQc/z0;->b:LQc/i;

    iput-object v5, v3, LQc/z0;->c:LQc/B0;

    iput v9, v3, LQc/z0;->h:I

    invoke-virtual {v2, v3}, LQc/D0;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    :goto_1
    invoke-interface {v3}, Lib/c;->getContext()Lib/h;

    move-result-object v2

    sget-object v10, LNc/i0;->a:LNc/i0;

    invoke-interface {v2, v10}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v2

    check-cast v2, LNc/j0;

    move-object v10, v0

    move-object v0, v6

    :cond_6
    :goto_2
    sget-object v11, LQc/A0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v2, :cond_8

    invoke-interface {v2}, LNc/j0;->b()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v2}, LNc/j0;->f()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    :cond_9
    sget-object v0, LRc/c;->b:LQ6/i;

    if-ne v11, v0, :cond_a

    move-object v0, v6

    goto :goto_4

    :cond_a
    move-object v0, v11

    :goto_4
    iput-object v1, v3, LQc/z0;->a:LQc/A0;

    iput-object v10, v3, LQc/z0;->b:LQc/i;

    iput-object v5, v3, LQc/z0;->c:LQc/B0;

    iput-object v2, v3, LQc/z0;->d:LNc/j0;

    iput-object v11, v3, LQc/z0;->e:Ljava/lang/Object;

    iput v8, v3, LQc/z0;->h:I

    invoke-interface {v10, v0, v3}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    return-object v4

    :cond_b
    move-object v0, v11

    move-object v11, v1

    move-object v1, v2

    :goto_5
    move-object v2, v1

    move-object v1, v11

    :cond_c
    iget-object v11, v5, LQc/B0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v12, LQc/n0;->b:LQ6/i;

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v13, LQc/n0;->c:LQ6/i;

    if-ne v11, v13, :cond_d

    goto :goto_2

    :cond_d
    iput-object v1, v3, LQc/z0;->a:LQc/A0;

    iput-object v10, v3, LQc/z0;->b:LQc/i;

    iput-object v5, v3, LQc/z0;->c:LQc/B0;

    iput-object v2, v3, LQc/z0;->d:LNc/j0;

    iput-object v0, v3, LQc/z0;->e:Ljava/lang/Object;

    iput v7, v3, LQc/z0;->h:I

    new-instance v11, LNc/k;

    invoke-static {v3}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object v13

    invoke-direct {v11, v9, v13}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v11}, LNc/k;->q()V

    iget-object v13, v5, LQc/B0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_e
    invoke-virtual {v13, v12, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    sget-object v15, Ldb/r;->a:Ldb/r;

    if-eqz v14, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v12, :cond_e

    invoke-virtual {v11, v15}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v11}, LNc/k;->p()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v11, v12, :cond_10

    move-object v15, v11

    :cond_10
    if-ne v15, v4, :cond_6

    return-object v4

    :goto_7
    invoke-virtual {v1, v5}, LRc/b;->g(LRc/d;)V

    throw v0
.end method

.method public final d()LRc/d;
    .locals 0

    new-instance p0, LQc/B0;

    invoke-direct {p0}, LQc/B0;-><init>()V

    return-object p0
.end method

.method public final e()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LQc/A0;->j(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final f()[LRc/d;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [LQc/B0;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    sget-object v0, LRc/c;->b:LQ6/i;

    sget-object v1, LQc/A0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, LRc/c;->b:LQ6/i;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, LRc/c;->b:LQ6/i;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, LQc/A0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, LQc/A0;->e:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_b

    add-int/2addr p1, v1

    iput p1, p0, LQc/A0;->e:I

    iget-object p2, p0, LRc/b;->a:[LRc/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [LQc/B0;

    if-eqz p2, :cond_9

    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_9

    aget-object v4, p2, v3

    if-eqz v4, :cond_8

    iget-object v4, v4, LQc/B0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v6, LQc/n0;->c:LQ6/i;

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v7, LQc/n0;->b:LQ6/i;

    if-ne v5, v7, :cond_6

    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast v5, LNc/k;

    sget-object v4, Ldb/r;->a:Ldb/r;

    invoke-virtual {v5, v4}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_6

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    monitor-enter p0

    :try_start_3
    iget p2, p0, LQc/A0;->e:I

    if-ne p2, p1, :cond_a

    add-int/2addr p1, v1

    iput p1, p0, LQc/A0;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_a
    :try_start_4
    iget-object p1, p0, LRc/b;->a:[LRc/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_0

    :goto_4
    monitor-exit p0

    throw p1

    :cond_b
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, LQc/A0;->e:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_5
    monitor-exit p0

    throw p1
.end method
