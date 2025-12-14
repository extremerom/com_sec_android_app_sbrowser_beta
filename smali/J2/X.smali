.class public final LJ2/X;
.super Landroidx/lifecycle/S;
.source "SourceFile"


# instance fields
.field public final a:LJ2/U;

.field public final b:LL8/a;

.field public final c:LJ2/f0;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lib/h;

.field public final h:LK9/f;


# direct methods
.method public constructor <init>(LJ2/U;LL8/a;[Ljava/lang/String;LK9/f;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, LJ2/X;->a:LJ2/U;

    iput-object p2, p0, LJ2/X;->b:LL8/a;

    new-instance p2, LJ2/f0;

    invoke-direct {p2, p3, p0}, LJ2/f0;-><init>([Ljava/lang/String;LJ2/X;)V

    iput-object p2, p0, LJ2/X;->c:LJ2/f0;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, LJ2/X;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, LJ2/X;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, LJ2/X;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, LJ2/U;->getQueryContext()Lib/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lib/i;->a:Lib/i;

    :goto_0
    iput-object p1, p0, LJ2/X;->g:Lib/h;

    iput-object p4, p0, LJ2/X;->h:LK9/f;

    return-void
.end method

.method public static final b(LJ2/X;Lkb/c;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, LJ2/h0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LJ2/h0;

    iget v1, v0, LJ2/h0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/h0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LJ2/h0;

    invoke-direct {v0, p0, p1}, LJ2/h0;-><init>(LJ2/X;Lkb/c;)V

    :goto_0
    iget-object p1, v0, LJ2/h0;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/h0;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget p0, v0, LJ2/h0;->b:I

    iget-object v2, v0, LJ2/h0;->a:LJ2/X;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/X;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LJ2/X;->a:LJ2/U;

    invoke-virtual {p1}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "observer"

    iget-object v6, p0, LJ2/X;->c:LJ2/f0;

    invoke-static {v6, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LJ2/D0;

    invoke-direct {v2, p1, v6}, LJ2/D0;-><init>(LJ2/s;LJ2/f0;)V

    invoke-virtual {p1, v2}, LJ2/s;->a(LJ2/n;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, LJ2/o;

    invoke-direct {v2, p1, v4}, LJ2/o;-><init>(LJ2/s;Lib/c;)V

    invoke-static {v2}, LG5/a4;->c(Lsb/n;)Ljava/lang/Object;

    :cond_3
    :goto_1
    iget-object p1, p0, LJ2/X;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    move-object v2, p0

    move p0, v3

    if-eqz p1, :cond_7

    move-object p1, v4

    :goto_2
    :try_start_1
    iget-object v6, v2, LJ2/X;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    :try_start_2
    iput-object v2, v0, LJ2/h0;->a:LJ2/X;

    iput v5, v0, LJ2/h0;->b:I

    iput v5, v0, LJ2/h0;->e:I

    iget-object p0, v2, LJ2/X;->h:LK9/f;

    iget-object p1, v2, LJ2/X;->a:LJ2/U;

    invoke-static {p1, v0, p0, v5, v3}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_4

    goto :goto_7

    :cond_4
    move p0, v5

    goto :goto_2

    :goto_3
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Exception while computing database live data."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v2, p1}, Landroidx/lifecycle/S;->postValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    iget-object p1, v2, LJ2/X;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :goto_4
    iget-object p1, v2, LJ2/X;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0

    :cond_7
    :goto_5
    if-eqz p0, :cond_9

    iget-object p0, v2, LJ2/X;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_6

    :cond_8
    move-object p0, v2

    goto :goto_1

    :cond_9
    :goto_6
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_7
    return-object v1
.end method


# virtual methods
.method public final onActive()V
    .locals 4

    invoke-super {p0}, Landroidx/lifecycle/S;->onActive()V

    iget-object v0, p0, LJ2/X;->b:LL8/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LL8/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LJ2/X;->a:LJ2/U;

    invoke-virtual {v0}, LJ2/U;->getCoroutineScope()LNc/B;

    move-result-object v0

    new-instance v1, LJ2/g0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LJ2/g0;-><init>(LJ2/X;Lib/c;)V

    const/4 v3, 0x2

    iget-object p0, p0, LJ2/X;->g:Lib/h;

    invoke-static {v0, p0, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final onInactive()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/S;->onInactive()V

    iget-object v0, p0, LJ2/X;->b:LL8/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LL8/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
