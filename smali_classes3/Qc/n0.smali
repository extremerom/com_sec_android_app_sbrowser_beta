.class public abstract LQc/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ6/i;

.field public static final b:LQ6/i;

.field public static final c:LQ6/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LQ6/i;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQc/n0;->a:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQc/n0;->b:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQc/n0;->c:LQ6/i;

    return-void
.end method

.method public static final a(IILPc/a;)LQc/m0;
    .locals 1

    if-ltz p0, :cond_4

    if-ltz p1, :cond_3

    if-gtz p0, :cond_1

    if-gtz p1, :cond_1

    sget-object v0, LPc/a;->SUSPEND:LPc/a;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/2addr p1, p0

    if-gez p1, :cond_2

    const p1, 0x7fffffff

    :cond_2
    new-instance v0, LQc/m0;

    invoke-direct {v0, p0, p1, p2}, LQc/m0;-><init>(IILPc/a;)V

    return-object v0

    :cond_3
    const-string p0, "extraBufferCapacity cannot be negative, but was "

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "replay cannot be negative, but was "

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(IILPc/a;I)LQc/m0;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    sget-object p2, LPc/a;->SUSPEND:LPc/a;

    :cond_2
    invoke-static {p0, p1, p2}, LQc/n0;->a(IILPc/a;)LQc/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)LQc/A0;
    .locals 1

    new-instance v0, LQc/A0;

    if-nez p0, :cond_0

    sget-object p0, LRc/c;->b:LQ6/i;

    :cond_0
    invoke-direct {v0, p0}, LQc/A0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final d(LQc/G0;Lsb/o;Ljava/lang/Throwable;Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, LQc/u;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LQc/u;

    iget v1, v0, LQc/u;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/u;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/u;

    invoke-direct {v0, p3}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p3, v0, LQc/u;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/u;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, LQc/u;->a:Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iput-object p2, v0, LQc/u;->a:Ljava/lang/Throwable;

    iput v3, v0, LQc/u;->c:I

    invoke-interface {p1, p0, p2, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v1

    :goto_3
    if-eqz p2, :cond_4

    if-eq p2, p0, :cond_4

    invoke-static {p0, p2}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    throw p0
.end method

.method public static final e([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    long-to-int p1, p1

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    aput-object p3, p0, p1

    return-void
.end method

.method public static f(LQc/h;I)LQc/h;
    .locals 7

    sget-object v0, LPc/a;->SUSPEND:LPc/a;

    const/4 v1, -0x1

    if-gez p1, :cond_1

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    sget-object v0, LPc/a;->DROP_OLDEST:LPc/a;

    const/4 p1, 0x0

    :cond_2
    move v4, p1

    move-object v5, v0

    instance-of p1, p0, LRc/D;

    if-eqz p1, :cond_3

    check-cast p0, LRc/D;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, v4, v5, p1}, LRc/c;->b(LRc/D;Lib/h;ILPc/a;I)LQc/h;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p1, LRc/j;

    const/4 v6, 0x2

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LRc/j;-><init>(LQc/h;Lib/h;ILPc/a;I)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public static final g(Lsb/n;)LQc/c;
    .locals 4

    new-instance v0, LQc/c;

    sget-object v1, Lib/i;->a:Lib/i;

    sget-object v2, LPc/a;->SUSPEND:LPc/a;

    const/4 v3, -0x2

    invoke-direct {v0, p0, v1, v3, v2}, LQc/c;-><init>(Lsb/n;Lib/h;ILPc/a;)V

    return-object v0
.end method

.method public static final h(LQc/h;LQc/i;Lkb/c;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p2, LQc/A;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/A;

    iget v1, v0, LQc/A;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/A;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/A;

    invoke-direct {v0, p2}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/A;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/A;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LQc/A;->a:Ltb/w;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, Ltb/w;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :try_start_1
    new-instance v2, LJ2/u;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1, p2}, LJ2/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, LQc/A;->a:Ltb/w;

    iput v3, v0, LQc/A;->c:I

    invoke-interface {p0, v2, v0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    goto :goto_4

    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, p0

    move-object p0, p2

    :goto_2
    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    sget-object p2, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, p2}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p1

    check-cast p1, LNc/j0;

    if-eqz p1, :cond_7

    invoke-interface {p1}, LNc/j0;->E()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p1}, LNc/j0;->f()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    throw v1

    :cond_7
    :goto_3
    if-nez p0, :cond_8

    :goto_4
    return-object v1

    :cond_8
    instance-of p1, v1, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_9

    invoke-static {p0, v1}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    invoke-static {v1, p0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final i(LQc/h;Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    sget v1, LQc/J;->a:I

    new-instance v3, LQc/I;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1, v0}, LQc/I;-><init>(Ljava/lang/Object;Lib/c;I)V

    new-instance p1, LRc/n;

    sget-object v5, Lib/i;->a:Lib/i;

    sget-object v7, LPc/a;->SUSPEND:LPc/a;

    const/4 v6, -0x2

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, LRc/n;-><init>(Lsb/o;LQc/h;Lib/h;ILPc/a;)V

    invoke-static {p1, v0}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object p0

    sget-object p1, LRc/F;->a:LRc/F;

    invoke-interface {p0, p1, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    sget-object p2, Ldb/r;->a:Ldb/r;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2
.end method

.method public static final j(LQc/h;)LZ4/i;
    .locals 7

    sget-object v0, LPc/m;->M:LPc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, LPc/l;->b:I

    const/4 v1, 0x1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sub-int/2addr v0, v1

    instance-of v1, p0, LRc/g;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, LRc/g;

    invoke-virtual {v1}, LRc/g;->g()LQc/h;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance p0, LZ4/i;

    const/4 v3, -0x3

    iget-object v4, v1, LRc/g;->c:LPc/a;

    iget v5, v1, LRc/g;->b:I

    if-eq v5, v3, :cond_1

    const/4 v3, -0x2

    if-eq v5, v3, :cond_1

    if-eqz v5, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    sget-object v3, LPc/a;->SUSPEND:LPc/a;

    const/4 v6, 0x0

    if-ne v4, v3, :cond_2

    if-nez v5, :cond_3

    :cond_2
    move v0, v6

    :cond_3
    :goto_1
    iget-object v1, v1, LRc/g;->a:Lib/h;

    invoke-direct {p0, v0, v4, v2, v1}, LZ4/i;-><init>(ILPc/a;LQc/h;Lib/h;)V

    return-object p0

    :cond_4
    new-instance v1, LZ4/i;

    sget-object v2, LPc/a;->SUSPEND:LPc/a;

    sget-object v3, Lib/i;->a:Lib/i;

    invoke-direct {v1, v0, v2, p0, v3}, LZ4/i;-><init>(ILPc/a;LQc/h;Lib/h;)V

    return-object v1
.end method

.method public static final k(LPc/i;)LQc/d;
    .locals 2

    new-instance v0, LQc/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LQc/d;-><init>(LPc/i;Z)V

    return-object v0
.end method

.method public static final l(LQc/h;)LQc/h;
    .locals 1

    instance-of v0, p0, LQc/y0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, LQc/g;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LQc/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    new-instance v0, LQc/g;

    invoke-direct {v0, p0}, LQc/g;-><init>(LQc/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final m(LQc/i;LPc/A;ZLib/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, LQc/l;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LQc/l;

    iget v1, v0, LQc/l;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/l;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/l;

    invoke-direct {v0, p3}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p3, v0, LQc/l;->e:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/l;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p2, v0, LQc/l;->d:Z

    iget-object p0, v0, LQc/l;->c:LPc/b;

    iget-object p1, v0, LQc/l;->b:LPc/A;

    iget-object v2, v0, LQc/l;->a:LQc/i;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, LQc/l;->d:Z

    iget-object p0, v0, LQc/l;->c:LPc/b;

    iget-object p1, v0, LQc/l;->b:LPc/A;

    iget-object v2, v0, LQc/l;->a:LQc/i;

    :try_start_1
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    instance-of p3, p0, LQc/G0;

    if-nez p3, :cond_9

    :try_start_2
    invoke-interface {p1}, LPc/A;->iterator()LPc/b;

    move-result-object p3

    :goto_1
    iput-object p0, v0, LQc/l;->a:LQc/i;

    iput-object p1, v0, LQc/l;->b:LPc/A;

    iput-object p3, v0, LQc/l;->c:LPc/b;

    iput-boolean p2, v0, LQc/l;->d:Z

    iput v4, v0, LQc/l;->f:I

    invoke-virtual {p3, v0}, LPc/b;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v5

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, LPc/b;->c()Ljava/lang/Object;

    move-result-object p3

    iput-object v2, v0, LQc/l;->a:LQc/i;

    iput-object p1, v0, LQc/l;->b:LPc/A;

    iput-object p0, v0, LQc/l;->c:LPc/b;

    iput-boolean p2, v0, LQc/l;->d:Z

    iput v3, v0, LQc/l;->f:I

    invoke-interface {v2, p3, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    const/4 p0, 0x0

    invoke-interface {p1, p0}, LPc/A;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_8

    invoke-static {p1, p0}, LG5/s;->a(LPc/A;Ljava/lang/Throwable;)V

    :cond_8
    throw p3

    :cond_9
    check-cast p0, LQc/G0;

    iget-object p0, p0, LQc/G0;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final n(LQc/h;Lib/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, LQc/N;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LQc/N;

    iget v1, v0, LQc/N;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/N;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/N;

    invoke-direct {v0, p1}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p1, v0, LQc/N;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/N;->d:I

    sget-object v3, LRc/c;->b:LQ6/i;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, LQc/N;->b:LQc/K;

    iget-object v0, v0, LQc/N;->a:Ltb/w;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LRc/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, Ltb/w;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v3, p1, Ltb/w;->a:Ljava/lang/Object;

    new-instance v2, LQc/K;

    const/4 v5, 0x0

    invoke-direct {v2, v5, p1}, LQc/K;-><init>(ILjava/lang/Object;)V

    :try_start_1
    iput-object p1, v0, LQc/N;->a:Ltb/w;

    iput-object v2, v0, LQc/N;->b:LQc/K;

    iput v4, v0, LQc/N;->d:I

    invoke-interface {p0, v2, v0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch LRc/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    iget-object v1, p1, LRc/a;->a:Ljava/lang/Object;

    if-ne v1, p0, :cond_5

    :goto_2
    iget-object v1, v0, Ltb/w;->a:Ljava/lang/Object;

    if-eq v1, v3, :cond_4

    :goto_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    throw p1
.end method

.method public static final o(LQc/h;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, LQc/O;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/O;

    iget v1, v0, LQc/O;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/O;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/O;

    invoke-direct {v0, p2}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/O;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/O;->e:I

    sget-object v3, LRc/c;->b:LQ6/i;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, LQc/O;->c:LQc/M;

    iget-object p1, v0, LQc/O;->b:Ltb/w;

    iget-object v0, v0, LQc/O;->a:Lsb/n;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LRc/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, Ltb/w;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v3, p2, Ltb/w;->a:Ljava/lang/Object;

    new-instance v2, LQc/M;

    const/4 v5, 0x0

    invoke-direct {v2, p1, p2, v5}, LQc/M;-><init>(Lsb/n;Ltb/w;I)V

    :try_start_1
    iput-object p1, v0, LQc/O;->a:Lsb/n;

    iput-object p2, v0, LQc/O;->b:Ltb/w;

    iput-object v2, v0, LQc/O;->c:LQc/M;

    iput v4, v0, LQc/O;->e:I

    invoke-interface {p0, v2, v0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch LRc/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    iget-object v1, p2, LRc/a;->a:Ljava/lang/Object;

    if-ne v1, p0, :cond_5

    :goto_2
    iget-object v1, p1, Ltb/w;->a:Ljava/lang/Object;

    if-eq v1, v3, :cond_4

    :goto_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected at least one element matching the predicate "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    throw p2
.end method

.method public static final p(LRc/D;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, LQc/Q;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/Q;

    iget v1, v0, LQc/Q;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/Q;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/Q;

    invoke-direct {v0, p2}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/Q;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/Q;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LQc/Q;->b:LQc/M;

    iget-object p1, v0, LQc/Q;->a:Ltb/w;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LRc/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, Ltb/w;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v2, LQc/M;

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v4}, LQc/M;-><init>(Lsb/n;Ltb/w;I)V

    :try_start_1
    iput-object p2, v0, LQc/Q;->a:Ltb/w;

    iput-object v2, v0, LQc/Q;->b:LQc/M;

    iput v3, v0, LQc/Q;->d:I

    invoke-interface {p0, v2, v0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch LRc/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    iget-object v0, p2, LRc/a;->a:Ljava/lang/Object;

    if-ne v0, p0, :cond_4

    :goto_2
    iget-object v1, p1, Ltb/w;->a:Ljava/lang/Object;

    :goto_3
    return-object v1

    :cond_4
    throw p2
.end method

.method public static final q(LQc/h;Lib/h;)LQc/h;
    .locals 7

    sget-object v0, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lib/i;->a:Lib/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, LRc/D;

    if-eqz v0, :cond_1

    check-cast p0, LRc/D;

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, LRc/c;->b(LRc/D;Lib/h;ILPc/a;I)LQc/h;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v6, LRc/j;

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LRc/j;-><init>(LQc/h;Lib/h;ILPc/a;I)V

    move-object p0, v6

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Flow context cannot contain job in it. Had "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final r(LQc/i0;Lib/h;ILPc/a;)LQc/h;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, LPc/a;->SUSPEND:LPc/a;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, LRc/j;

    invoke-direct {v0, p2, p3, p0, p1}, LRc/i;-><init>(ILPc/a;LQc/h;Lib/h;)V

    return-object v0
.end method
