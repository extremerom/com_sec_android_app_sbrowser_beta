.class public final LL2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/m0;
.implements LL2/x;


# instance fields
.field public final a:LL2/i;

.field public final b:Z

.field public final c:Lfb/k;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LL2/i;Z)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/w;->a:LL2/i;

    iput-boolean p2, p0, LL2/w;->b:Z

    new-instance p1, Lfb/k;

    invoke-direct {p1}, Lfb/k;-><init>()V

    iput-object p1, p0, LL2/w;->c:Lfb/k;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LL2/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, LL2/v;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LL2/v;

    iget v1, v0, LL2/v;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LL2/v;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, LL2/v;

    invoke-direct {v0, p0, p3}, LL2/v;-><init>(LL2/w;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LL2/v;->e:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LL2/v;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, LL2/v;->d:LL2/i;

    iget-object p2, v0, LL2/v;->c:Lsb/k;

    iget-object p1, v0, LL2/v;->b:Ljava/lang/String;

    iget-object v0, v0, LL2/v;->a:LL2/w;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p3, p0, LL2/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    const/16 v2, 0x15

    if-nez p3, :cond_5

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object p3

    sget-object v5, LL2/a;->b:LE5/v;

    invoke-interface {p3, v5}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p3

    check-cast p3, LL2/a;

    if-eqz p3, :cond_4

    iget-object p3, p3, LL2/a;->a:LL2/w;

    if-ne p3, p0, :cond_4

    iput-object p0, v0, LL2/v;->a:LL2/w;

    iput-object p1, v0, LL2/v;->b:Ljava/lang/String;

    iput-object p2, v0, LL2/v;->c:Lsb/k;

    iget-object p3, p0, LL2/w;->a:LL2/i;

    iput-object p3, v0, LL2/v;->d:LL2/i;

    iput v4, v0, LL2/v;->g:I

    iget-object v2, p3, LL2/i;->b:LYc/a;

    invoke-interface {v2, v0}, LYc/a;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, LL2/o;

    iget-object v1, p0, LL2/w;->a:LL2/i;

    invoke-virtual {v1, p1}, LL2/i;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LL2/o;-><init>(LL2/w;LS2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v3}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p3, v3}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-static {v0, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-interface {p3, v3}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0

    :cond_4
    const-string p0, "Attempted to use connection on a different coroutine"

    invoke-static {v2, p0}, LG5/j2;->e(ILjava/lang/String;)V

    throw v3

    :cond_5
    const-string p0, "Connection is recycled"

    invoke-static {v2, p0}, LG5/j2;->e(ILjava/lang/String;)V

    throw v3
.end method

.method public final b(Lkb/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LL2/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-nez v0, :cond_1

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    sget-object v0, LL2/a;->b:LE5/v;

    invoke-interface {p1, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    check-cast p1, LL2/a;

    if-eqz p1, :cond_0

    iget-object p1, p1, LL2/a;->a:LL2/w;

    if-ne p1, p0, :cond_0

    iget-object p0, p0, LL2/w;->c:Lfb/k;

    invoke-virtual {p0}, Lfb/k;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Attempted to use connection on a different coroutine"

    invoke-static {v2, p0}, LG5/j2;->e(ILjava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "Connection is recycled"

    invoke-static {v2, p0}, LG5/j2;->e(ILjava/lang/String;)V

    throw v1
.end method

.method public final c()LS2/a;
    .locals 0

    iget-object p0, p0, LL2/w;->a:LL2/i;

    return-object p0
.end method

.method public final d(LJ2/l0;Lsb/n;Lkb/i;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LL2/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-nez v0, :cond_1

    invoke-interface {p3}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    sget-object v3, LL2/a;->b:LE5/v;

    invoke-interface {v0, v3}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    check-cast v0, LL2/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LL2/a;->a:LL2/w;

    if-ne v0, p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LL2/w;->g(LJ2/l0;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Attempted to use connection on a different coroutine"

    invoke-static {v2, p0}, LG5/j2;->e(ILjava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "Connection is recycled"

    invoke-static {v2, p0}, LG5/j2;->e(ILjava/lang/String;)V

    throw v1
.end method

.method public final e(LJ2/l0;Lkb/c;)Ljava/lang/Object;
    .locals 6

    const-string v0, "SAVEPOINT \'"

    instance-of v1, p2, LL2/s;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, LL2/s;

    iget v2, v1, LL2/s;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, LL2/s;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, LL2/s;

    invoke-direct {v1, p0, p2}, LL2/s;-><init>(LL2/w;Lkb/c;)V

    :goto_0
    iget-object p2, v1, LL2/s;->d:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, LL2/s;->f:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, LL2/s;->c:LL2/i;

    iget-object p1, v1, LL2/s;->b:LJ2/l0;

    iget-object v1, v1, LL2/s;->a:LL2/w;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v1, LL2/s;->a:LL2/w;

    iput-object p1, v1, LL2/s;->b:LJ2/l0;

    iget-object p2, p0, LL2/w;->a:LL2/i;

    iput-object p2, v1, LL2/s;->c:LL2/i;

    iput v4, v1, LL2/s;->f:I

    iget-object v3, p2, LL2/i;->b:LYc/a;

    invoke-interface {v3, v1}, LYc/a;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LL2/w;->c:Lfb/k;

    iget v3, v2, Lfb/k;->c:I

    invoke-virtual {v2}, Lfb/k;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, LL2/w;->a:LL2/i;

    if-eqz v5, :cond_7

    :try_start_1
    sget-object v0, LL2/r;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v4, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    const-string p1, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    const-string p1, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :cond_6
    const-string p1, "BEGIN DEFERRED TRANSACTION"

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :goto_2
    new-instance p0, LL2/q;

    invoke-direct {p0, v3}, LL2/q;-><init>(I)V

    invoke-virtual {v2, p0}, Lfb/k;->addLast(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2, v1}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p0

    :goto_3
    invoke-interface {p2, v1}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final f(ZLkb/c;)Ljava/lang/Object;
    .locals 6

    const-string v0, "ROLLBACK TRANSACTION TO SAVEPOINT \'"

    const-string v1, "RELEASE SAVEPOINT \'"

    instance-of v2, p2, LL2/t;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, LL2/t;

    iget v3, v2, LL2/t;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, LL2/t;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, LL2/t;

    invoke-direct {v2, p0, p2}, LL2/t;-><init>(LL2/w;Lkb/c;)V

    :goto_0
    iget-object p2, v2, LL2/t;->d:Ljava/lang/Object;

    sget-object v3, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v4, v2, LL2/t;->f:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-boolean p1, v2, LL2/t;->c:Z

    iget-object p0, v2, LL2/t;->b:LL2/i;

    iget-object v2, v2, LL2/t;->a:LL2/w;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v2, LL2/t;->a:LL2/w;

    iget-object p2, p0, LL2/w;->a:LL2/i;

    iput-object p2, v2, LL2/t;->b:LL2/i;

    iput-boolean p1, v2, LL2/t;->c:Z

    iput v5, v2, LL2/t;->f:I

    iget-object v4, p2, LL2/i;->b:LYc/a;

    invoke-interface {v4, v2}, LYc/a;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, LL2/w;->c:Lfb/k;

    invoke-virtual {v3}, Lfb/k;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Lfb/t;->t(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LL2/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x27

    iget-object p0, p0, LL2/w;->a:LL2/i;

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lfb/k;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "END TRANSACTION"

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, LL2/q;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lfb/k;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "ROLLBACK TRANSACTION"

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, LL2/q;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p2, v2}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p0

    :cond_7
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not in a transaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-interface {p2, v2}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final g(LJ2/l0;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, LL2/u;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LL2/u;

    iget v1, v0, LL2/u;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LL2/u;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LL2/u;

    invoke-direct {v0, p0, p3}, LL2/u;-><init>(LL2/w;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LL2/u;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LL2/u;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    const/4 p0, 0x4

    if-eq v2, p0, :cond_2

    if-eq v2, v4, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, v0, LL2/u;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    iget-object p1, v0, LL2/u;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p2

    goto/16 :goto_6

    :cond_2
    iget-object p0, v0, LL2/u;->a:Ljava/lang/Object;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    iget-object p0, v0, LL2/u;->a:Ljava/lang/Object;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget p0, v0, LL2/u;->c:I

    iget-object p1, v0, LL2/u;->a:Ljava/lang/Object;

    check-cast p1, LL2/w;

    :try_start_1
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_4

    :cond_5
    iget-object p0, v0, LL2/u;->b:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lsb/n;

    iget-object p0, v0, LL2/u;->a:Ljava/lang/Object;

    check-cast p0, LL2/w;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    if-nez p1, :cond_7

    sget-object p1, LJ2/l0;->DEFERRED:LJ2/l0;

    :cond_7
    iput-object p0, v0, LL2/u;->a:Ljava/lang/Object;

    iput-object p2, v0, LL2/u;->b:Ljava/lang/Object;

    iput v7, v0, LL2/u;->f:I

    invoke-virtual {p0, p1, v0}, LL2/w;->e(LJ2/l0;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_1
    :try_start_2
    new-instance p1, LL2/p;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p0}, LL2/p;-><init>(ILjava/lang/Object;)V

    iput-object p0, v0, LL2/u;->a:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, v0, LL2/u;->b:Ljava/lang/Object;

    iput v7, v0, LL2/u;->c:I

    iput v6, v0, LL2/u;->f:I

    invoke-interface {p2, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, p0

    move p0, v7

    :goto_2
    if-eqz p0, :cond_a

    move v3, v7

    :cond_a
    iput-object p3, v0, LL2/u;->a:Ljava/lang/Object;

    iput v5, v0, LL2/u;->f:I

    invoke-virtual {p1, v3, v0}, LL2/w;->f(ZLkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    return-object v1

    :cond_b
    move-object p0, p3

    :goto_3
    return-object p0

    :catchall_1
    move-exception p1

    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    iput-object p1, v0, LL2/u;->a:Ljava/lang/Object;

    iput-object p2, v0, LL2/u;->b:Ljava/lang/Object;

    iput v4, v0, LL2/u;->f:I

    invoke-virtual {p0, v3, v0}, LL2/w;->f(ZLkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    if-ne p0, v1, :cond_c

    return-object v1

    :cond_c
    move-object p0, p2

    goto :goto_7

    :goto_5
    move-object v8, p2

    move-object p2, p0

    move-object p0, v8

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_5

    :goto_6
    if-eqz p1, :cond_d

    invoke-static {p1, p2}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw p0

    :cond_d
    throw p2
.end method
