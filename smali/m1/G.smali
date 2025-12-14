.class public final Lm1/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/h;


# static fields
.field public static final j:Ljava/util/LinkedHashSet;

.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ltb/m;

.field public final b:Lm1/k;

.field public final c:Lm1/b;

.field public final d:LQc/k;

.field public final e:Ljava/lang/String;

.field public final f:Ldb/o;

.field public final g:LQc/A0;

.field public h:Ljava/util/List;

.field public final i:Lo3/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lm1/G;->j:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm1/G;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsb/a;Lm1/k;Ljava/util/List;Lm1/b;LNc/B;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ltb/m;

    iput-object p1, p0, Lm1/G;->a:Ltb/m;

    iput-object p2, p0, Lm1/G;->b:Lm1/k;

    iput-object p4, p0, Lm1/G;->c:Lm1/b;

    new-instance p1, Lm1/u;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lm1/u;-><init>(Lm1/G;Lib/c;)V

    new-instance p4, LQc/k;

    invoke-direct {p4, p1}, LQc/k;-><init>(Lsb/n;)V

    iput-object p4, p0, Lm1/G;->d:LQc/k;

    const-string p1, ".tmp"

    iput-object p1, p0, Lm1/G;->e:Ljava/lang/String;

    new-instance p1, LA4/a;

    const/16 p4, 0x17

    invoke-direct {p1, p4, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lm1/G;->f:Ldb/o;

    sget-object p1, Lm1/I;->a:Lm1/I;

    invoke-static {p1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, Lm1/G;->g:LQc/A0;

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lm1/G;->h:Ljava/util/List;

    new-instance p1, Lo3/i;

    new-instance p3, LB0/a;

    const/16 p4, 0x1b

    invoke-direct {p3, p4, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance p4, Lm1/r;

    invoke-direct {p4, p0, p2}, Lm1/r;-><init>(Lm1/G;Lib/c;)V

    const-string p2, "scope"

    invoke-static {p5, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p5, p1, Lo3/i;->a:Ljava/lang/Object;

    iput-object p4, p1, Lo3/i;->b:Ljava/lang/Object;

    const/4 p2, 0x6

    const p4, 0x7fffffff

    const/4 v0, 0x0

    invoke-static {p4, p2, v0}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object p2

    iput-object p2, p1, Lo3/i;->c:Ljava/lang/Object;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p1, Lo3/i;->d:Ljava/lang/Object;

    invoke-interface {p5}, LNc/B;->v()Lib/h;

    move-result-object p2

    sget-object p4, LNc/i0;->a:LNc/i0;

    invoke-interface {p2, p4}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p2

    check-cast p2, LNc/j0;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, LC1/j;

    const/16 p5, 0x12

    invoke-direct {p4, p5, p3, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p4}, LNc/j0;->q(Lsb/k;)LNc/P;

    :goto_0
    iput-object p1, p0, Lm1/G;->i:Lo3/i;

    return-void
.end method

.method public static final b(Lm1/G;Lm1/n;Lkb/c;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lm1/v;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lm1/v;

    iget v1, v0, Lm1/v;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/v;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/v;

    invoke-direct {v0, p0, p2}, Lm1/v;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p2, v0, Lm1/v;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/v;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm1/v;->a:Ljava/lang/Object;

    check-cast p0, LNc/p;

    :goto_1
    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lm1/v;->c:LNc/q;

    iget-object p1, v0, Lm1/v;->b:Lm1/G;

    iget-object v2, v0, Lm1/v;->a:Ljava/lang/Object;

    check-cast v2, Lm1/n;

    :try_start_1
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p0

    move-object p0, p1

    move-object p1, v2

    goto :goto_4

    :cond_3
    iget-object p0, v0, Lm1/v;->a:Ljava/lang/Object;

    check-cast p0, LNc/p;

    goto :goto_1

    :cond_4
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p1, Lm1/n;->b:LNc/q;

    :try_start_2
    iget-object v2, p0, Lm1/G;->g:LQc/A0;

    invoke-virtual {v2}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/H;

    instance-of v6, v2, Lm1/c;

    if-eqz v6, :cond_6

    iget-object v2, p1, Lm1/n;->a:Lsb/n;

    iget-object p1, p1, Lm1/n;->d:Lib/h;

    iput-object p2, v0, Lm1/v;->a:Ljava/lang/Object;

    iput v5, v0, Lm1/v;->f:I

    invoke-virtual {p0, v2, p1, v0}, Lm1/G;->i(Lsb/n;Lib/h;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    goto :goto_6

    :goto_2
    move-object p0, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_6
    instance-of v6, v2, Lm1/j;

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    instance-of v5, v2, Lm1/I;

    :goto_3
    if-eqz v5, :cond_a

    iget-object v5, p1, Lm1/n;->c:Lm1/H;

    if-ne v2, v5, :cond_9

    iput-object p1, v0, Lm1/v;->a:Ljava/lang/Object;

    iput-object p0, v0, Lm1/v;->b:Lm1/G;

    iput-object p2, v0, Lm1/v;->c:LNc/q;

    iput v4, v0, Lm1/v;->f:I

    invoke-virtual {p0, v0}, Lm1/G;->e(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_8

    :cond_8
    :goto_4
    iget-object v2, p1, Lm1/n;->a:Lsb/n;

    iget-object p1, p1, Lm1/n;->d:Lib/h;

    iput-object p2, v0, Lm1/v;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lm1/v;->b:Lm1/G;

    iput-object v4, v0, Lm1/v;->c:LNc/q;

    iput v3, v0, Lm1/v;->f:I

    invoke-virtual {p0, v2, p1, v0}, Lm1/G;->i(Lsb/n;Lib/h;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_8

    :cond_9
    check-cast v2, Lm1/j;

    iget-object p0, v2, Lm1/j;->a:Ljava/lang/Throwable;

    throw p0

    :cond_a
    instance-of p0, v2, Lm1/i;

    if-eqz p0, :cond_b

    check-cast v2, Lm1/i;

    iget-object p0, v2, Lm1/i;->a:Ljava/lang/Throwable;

    throw p0

    :cond_b
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p2

    :goto_6
    invoke-static {p2}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p0, LNc/q;

    if-nez p1, :cond_c

    invoke-virtual {p0, p2}, LNc/t0;->V(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LNc/s;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, p2}, LNc/t0;->V(Ljava/lang/Object;)Z

    :goto_7
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_8
    return-object v1
.end method


# virtual methods
.method public final a(Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, LNc/E;->b()LNc/q;

    move-result-object v0

    iget-object v1, p0, Lm1/G;->g:LQc/A0;

    invoke-virtual {v1}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/H;

    new-instance v2, Lm1/n;

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Lm1/n;-><init>(Lsb/n;LNc/q;Lm1/H;Lib/h;)V

    iget-object p0, p0, Lm1/G;->i:Lo3/i;

    invoke-virtual {p0, v2}, Lo3/i;->h(Lm1/o;)V

    invoke-virtual {v0, p2}, LNc/t0;->z(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method

.method public final c()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lm1/G;->f:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public final d(Lkb/c;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Lm1/w;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm1/w;

    iget v1, v0, Lm1/w;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/w;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/w;

    invoke-direct {v0, p0, p1}, Lm1/w;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lm1/w;->g:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/w;->i:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm1/w;->d:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v1, v0, Lm1/w;->c:Ljava/io/Serializable;

    check-cast v1, Ltb/s;

    iget-object v2, v0, Lm1/w;->b:Ljava/lang/Object;

    check-cast v2, Ltb/w;

    iget-object v0, v0, Lm1/w;->a:Lm1/G;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lm1/w;->f:Ljava/util/Iterator;

    iget-object v2, v0, Lm1/w;->e:Lm1/y;

    iget-object v7, v0, Lm1/w;->d:Ljava/lang/Object;

    check-cast v7, Ltb/s;

    iget-object v8, v0, Lm1/w;->c:Ljava/io/Serializable;

    check-cast v8, Ltb/w;

    iget-object v9, v0, Lm1/w;->b:Ljava/lang/Object;

    check-cast v9, LYc/a;

    iget-object v10, v0, Lm1/w;->a:Lm1/G;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p0, v0, Lm1/w;->d:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    iget-object v2, v0, Lm1/w;->c:Ljava/io/Serializable;

    check-cast v2, Ltb/w;

    iget-object v7, v0, Lm1/w;->b:Ljava/lang/Object;

    check-cast v7, LYc/a;

    iget-object v8, v0, Lm1/w;->a:Lm1/G;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lm1/G;->g:LQc/A0;

    invoke-virtual {p1}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lm1/I;->a:Lm1/I;

    invoke-static {v2, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lm1/j;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v7

    new-instance p1, Ltb/w;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lm1/w;->a:Lm1/G;

    iput-object v7, v0, Lm1/w;->b:Ljava/lang/Object;

    iput-object p1, v0, Lm1/w;->c:Ljava/io/Serializable;

    iput-object p1, v0, Lm1/w;->d:Ljava/lang/Object;

    iput v5, v0, Lm1/w;->i:I

    invoke-virtual {p0, v0}, Lm1/G;->h(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v8, p0

    move-object p0, p1

    move-object p1, v2

    move-object v2, p0

    :goto_2
    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    new-instance p0, Ltb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lm1/y;

    invoke-direct {p1, v7, p0, v2, v8}, Lm1/y;-><init>(LYc/a;Ltb/s;Ltb/w;Lm1/G;)V

    iget-object v9, v8, Lm1/G;->h:Ljava/util/List;

    if-nez v9, :cond_8

    move-object p1, v0

    move-object v0, v8

    move-object v11, v7

    move-object v7, p0

    move-object p0, v11

    goto :goto_4

    :cond_8
    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v8

    move-object v8, v2

    move-object v2, p1

    move-object v11, v7

    move-object v7, p0

    move-object p0, v9

    move-object v9, v11

    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb/n;

    iput-object v10, v0, Lm1/w;->a:Lm1/G;

    iput-object v9, v0, Lm1/w;->b:Ljava/lang/Object;

    iput-object v8, v0, Lm1/w;->c:Ljava/io/Serializable;

    iput-object v7, v0, Lm1/w;->d:Ljava/lang/Object;

    iput-object v2, v0, Lm1/w;->e:Lm1/y;

    iput-object p0, v0, Lm1/w;->f:Ljava/util/Iterator;

    iput v4, v0, Lm1/w;->i:I

    invoke-interface {p1, v2, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_a
    move-object p1, v0

    move-object v2, v8

    move-object p0, v9

    move-object v0, v10

    :goto_4
    iput-object v6, v0, Lm1/G;->h:Ljava/util/List;

    iput-object v0, p1, Lm1/w;->a:Lm1/G;

    iput-object v2, p1, Lm1/w;->b:Ljava/lang/Object;

    iput-object v7, p1, Lm1/w;->c:Ljava/io/Serializable;

    iput-object p0, p1, Lm1/w;->d:Ljava/lang/Object;

    iput-object v6, p1, Lm1/w;->e:Lm1/y;

    iput-object v6, p1, Lm1/w;->f:Ljava/util/Iterator;

    iput v3, p1, Lm1/w;->i:I

    invoke-interface {p0, p1}, LYc/a;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    move-object v1, v7

    :goto_5
    :try_start_0
    iput-boolean v5, v1, Ltb/s;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, v6}, LYc/a;->b(Ljava/lang/Object;)V

    iget-object p0, v0, Lm1/G;->g:LQc/A0;

    new-instance p1, Lm1/c;

    iget-object v0, v2, Ltb/w;->a:Ljava/lang/Object;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    invoke-direct {p1, v1, v0}, Lm1/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6, p1}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0, v6}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1
.end method

.method public final e(Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lm1/z;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm1/z;

    iget v1, v0, Lm1/z;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/z;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/z;

    invoke-direct {v0, p0, p1}, Lm1/z;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lm1/z;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/z;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm1/z;->a:Lm1/G;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iput-object p0, v0, Lm1/z;->a:Lm1/G;

    iput v3, v0, Lm1/z;->d:I

    invoke-virtual {p0, v0}, Lm1/G;->d(Lkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_2
    iget-object p0, p0, Lm1/G;->g:LQc/A0;

    new-instance v0, Lm1/j;

    invoke-direct {v0, p1}, Lm1/j;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw p1
.end method

.method public final f(Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lm1/A;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm1/A;

    iget v1, v0, Lm1/A;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/A;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/A;

    invoke-direct {v0, p0, p1}, Lm1/A;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lm1/A;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/A;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm1/A;->a:Lm1/G;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iput-object p0, v0, Lm1/A;->a:Lm1/G;

    iput v3, v0, Lm1/A;->d:I

    invoke-virtual {p0, v0}, Lm1/G;->d(Lkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    return-object v1

    :goto_1
    iget-object p0, p0, Lm1/G;->g:LQc/A0;

    new-instance v0, Lm1/j;

    invoke-direct {v0, p1}, Lm1/j;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final g(Lkb/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lm1/B;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm1/B;

    iget v1, v0, Lm1/B;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/B;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/B;

    invoke-direct {v0, p0, p1}, Lm1/B;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lm1/B;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/B;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm1/B;->b:Ljava/io/FileInputStream;

    iget-object v0, v0, Lm1/B;->a:Lm1/G;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lm1/G;->c()Ljava/io/File;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v2, p0, Lm1/G;->b:Lm1/k;

    iput-object p0, v0, Lm1/B;->a:Lm1/G;

    iput-object p1, v0, Lm1/B;->b:Ljava/io/FileInputStream;

    iput v3, v0, Lm1/B;->e:I

    invoke-interface {v2, p1}, Lm1/k;->c(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v4

    :goto_1
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0, v1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    move-object v4, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-static {p0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_4
    invoke-virtual {v0}, Lm1/G;->c()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, v0, Lm1/G;->b:Lm1/k;

    invoke-interface {p0}, Lm1/k;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    throw p0
.end method

.method public final getData()LQc/h;
    .locals 0

    iget-object p0, p0, Lm1/G;->d:LQc/k;

    return-object p0
.end method

.method public final h(Lkb/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lm1/C;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm1/C;

    iget v1, v0, Lm1/C;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/C;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/C;

    invoke-direct {v0, p0, p1}, Lm1/C;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Lm1/C;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/C;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm1/C;->b:Ljava/lang/Object;

    iget-object v0, v0, Lm1/C;->a:Ljava/lang/Object;

    check-cast v0, Lm1/a;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lm1/C;->b:Ljava/lang/Object;

    check-cast p0, Lm1/a;

    iget-object v2, v0, Lm1/C;->a:Ljava/lang/Object;

    check-cast v2, Lm1/G;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p0, v0, Lm1/C;->a:Ljava/lang/Object;

    check-cast p0, Lm1/G;

    :try_start_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lm1/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_2
    iput-object p0, v0, Lm1/C;->a:Ljava/lang/Object;

    iput v5, v0, Lm1/C;->e:I

    invoke-virtual {p0, v0}, Lm1/G;->g(Lkb/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lm1/a; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object p1

    :goto_2
    iget-object v2, p0, Lm1/G;->c:Lm1/b;

    iput-object p0, v0, Lm1/C;->a:Ljava/lang/Object;

    iput-object p1, v0, Lm1/C;->b:Ljava/lang/Object;

    iput v4, v0, Lm1/C;->e:I

    invoke-interface {v2, p1}, Lm1/b;->n(Lm1/a;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v6

    :goto_3
    :try_start_3
    iput-object p0, v0, Lm1/C;->a:Ljava/lang/Object;

    iput-object p1, v0, Lm1/C;->b:Ljava/lang/Object;

    iput v3, v0, Lm1/C;->e:I

    invoke-virtual {v2, p1, v0}, Lm1/G;->j(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    move-object p0, p1

    :goto_4
    return-object p0

    :goto_5
    move-object v0, p0

    move-object p0, p1

    goto :goto_6

    :catch_2
    move-exception p1

    goto :goto_5

    :goto_6
    invoke-static {v0, p0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final i(Lsb/n;Lib/h;Lkb/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, Lm1/D;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lm1/D;

    iget v1, v0, Lm1/D;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/D;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/D;

    invoke-direct {v0, p0, p3}, Lm1/D;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p3, v0, Lm1/D;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/D;->f:I

    const-string v3, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lm1/D;->b:Ljava/lang/Object;

    iget-object p1, v0, Lm1/D;->a:Lm1/G;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lm1/D;->c:Ljava/lang/Object;

    iget-object p1, v0, Lm1/D;->b:Ljava/lang/Object;

    check-cast p1, Lm1/c;

    iget-object p2, v0, Lm1/D;->a:Lm1/G;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p3, p0, Lm1/G;->g:LQc/A0;

    invoke-virtual {p3}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lm1/c;

    iget-object v2, p3, Lm1/c;->a:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    iget v8, p3, Lm1/c;->b:I

    if-ne v2, v8, :cond_b

    new-instance v2, Lm1/E;

    iget-object v8, p3, Lm1/c;->a:Ljava/lang/Object;

    invoke-direct {v2, v8, p1, v7}, Lm1/E;-><init>(Ljava/lang/Object;Lsb/n;Lib/c;)V

    iput-object p0, v0, Lm1/D;->a:Lm1/G;

    iput-object p3, v0, Lm1/D;->b:Ljava/lang/Object;

    iput-object v8, v0, Lm1/D;->c:Ljava/lang/Object;

    iput v6, v0, Lm1/D;->f:I

    invoke-static {p2, v2, v0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    move-object p0, v8

    move-object v9, p3

    move-object p3, p1

    move-object p1, v9

    :goto_2
    iget-object v2, p1, Lm1/c;->a:Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    iget p1, p1, Lm1/c;->b:I

    if-ne v2, p1, :cond_a

    invoke-static {p0, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    iput-object p2, v0, Lm1/D;->a:Lm1/G;

    iput-object p3, v0, Lm1/D;->b:Ljava/lang/Object;

    iput-object v7, v0, Lm1/D;->c:Ljava/lang/Object;

    iput v5, v0, Lm1/D;->f:I

    invoke-virtual {p2, p3, v0}, Lm1/G;->j(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, p2

    move-object p0, p3

    :goto_4
    iget-object p1, p1, Lm1/G;->g:LQc/A0;

    new-instance p2, Lm1/c;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_9
    invoke-direct {p2, v4, p0}, Lm1/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v7, p2}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_5
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;
    .locals 8

    const-string v0, "Unable to rename "

    instance-of v1, p2, Lm1/F;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lm1/F;

    iget v2, v1, Lm1/F;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lm1/F;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lm1/F;

    invoke-direct {v1, p0, p2}, Lm1/F;-><init>(Lm1/G;Lkb/c;)V

    :goto_0
    iget-object p2, v1, Lm1/F;->e:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, Lm1/F;->g:I

    sget-object v4, Ldb/r;->a:Ldb/r;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p0, v1, Lm1/F;->d:Ljava/io/FileOutputStream;

    iget-object p1, v1, Lm1/F;->c:Ljava/io/FileOutputStream;

    iget-object v2, v1, Lm1/F;->b:Ljava/io/File;

    iget-object v1, v1, Lm1/F;->a:Lm1/G;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm1/G;->c()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lm1/G;->c()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lm1/G;->e:Ljava/lang/String;

    invoke-static {v6, v3}, Ltb/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v6, p0, Lm1/G;->b:Lm1/k;

    new-instance v7, Lm1/p;

    invoke-direct {v7, v3}, Lm1/p;-><init>(Ljava/io/FileOutputStream;)V

    iput-object p0, v1, Lm1/F;->a:Lm1/G;

    iput-object p2, v1, Lm1/F;->b:Ljava/io/File;

    iput-object v3, v1, Lm1/F;->c:Ljava/io/FileOutputStream;

    iput-object v3, v1, Lm1/F;->d:Ljava/io/FileOutputStream;

    iput v5, v1, Lm1/F;->g:I

    invoke-interface {v6, p1, v7}, Lm1/k;->b(Ljava/lang/Object;Lm1/p;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v4, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, p0

    move-object v2, p2

    move-object p0, v3

    move-object p1, p0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x0

    :try_start_4
    invoke-static {p1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lm1/G;->c()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v4

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    move-object p2, v2

    goto :goto_5

    :goto_3
    move-object v2, p2

    move-object p1, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_4
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-static {p1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception p0

    :goto_5
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_6
    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to create parent directories of "

    invoke-static {p2, p1}, Ltb/k;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
