.class public final Lc2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/n;


# instance fields
.field public final a:LYc/d;

.field public final b:Lc2/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v0

    iput-object v0, p0, Lc2/u;->a:LYc/d;

    new-instance v0, Lc2/t;

    invoke-direct {v0, p0}, Lc2/t;-><init>(Lc2/u;)V

    iput-object v0, p0, Lc2/u;->b:Lc2/t;

    return-void
.end method

.method public static final b(Lc2/u;Landroid/content/Context;)V
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lg3/n;->g(Landroid/content/Context;)Lg3/n;

    move-result-object v1

    sget-object v3, Lf3/k;->KEEP:Lf3/k;

    new-instance v0, LZ3/x;

    const-class v2, Landroidx/glance/session/SessionWorker;

    invoke-direct {v0, v2}, LZ3/x;-><init>(Ljava/lang/Class;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-string v4, "timeUnit"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v4, Lo3/q;

    const-wide/16 v5, 0xe42

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    iput-wide v5, v4, Lo3/q;->g:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v2, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v2, Lo3/q;

    iget-wide v6, v2, Lo3/q;->g:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    sget-object v5, Lf3/v;->NOT_REQUIRED:Lf3/v;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v2}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    new-instance v2, Lf3/f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const-wide/16 v12, -0x1

    move-object v4, v2

    move-wide v10, v12

    invoke-direct/range {v4 .. v14}, Lf3/f;-><init>(Lf3/v;ZZZZJJLjava/util/Set;)V

    iget-object v4, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v4, Lo3/q;

    iput-object v2, v4, Lo3/q;->j:Lf3/f;

    invoke-virtual {v0}, LZ3/x;->m()Lf3/x;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v6, Lg3/j;

    const/4 v5, 0x0

    const-string v2, "sessionWorkerKeepEnabled"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lg3/j;-><init>(Lg3/n;Ljava/lang/String;Lf3/k;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6}, Lg3/j;->g()Lf3/B;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lc2/o;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc2/o;

    iget v1, v0, Lc2/o;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc2/o;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc2/o;

    invoke-direct {v0, p0, p2}, Lc2/o;-><init>(Lc2/u;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lc2/o;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lc2/o;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc2/o;->a:Ljava/lang/Object;

    check-cast p0, LYc/a;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lc2/o;->c:LYc/d;

    iget-object p1, v0, Lc2/o;->b:Lsb/n;

    iget-object v2, v0, Lc2/o;->a:Ljava/lang/Object;

    check-cast v2, Lc2/u;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lc2/o;->a:Ljava/lang/Object;

    iput-object p1, v0, Lc2/o;->b:Lsb/n;

    iget-object p2, p0, Lc2/u;->a:LYc/d;

    iput-object p2, v0, Lc2/o;->c:LYc/d;

    iput v4, v0, Lc2/o;->f:I

    invoke-virtual {p2, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    :try_start_1
    iget-object p0, p0, Lc2/u;->b:Lc2/t;

    iput-object p2, v0, Lc2/o;->a:Ljava/lang/Object;

    iput-object v5, v0, Lc2/o;->b:Lsb/n;

    iput-object v5, v0, Lc2/o;->c:LYc/d;

    iput v3, v0, Lc2/o;->f:I

    invoke-interface {p1, p0, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    :goto_2
    invoke-interface {p0, v5}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_3
    invoke-interface {p0, v5}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1
.end method
