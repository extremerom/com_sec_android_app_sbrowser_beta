.class public final Lv2/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo3/f;

.field public final b:Z

.field public final c:LYc/d;

.field public d:LNc/j0;

.field public e:I


# direct methods
.method public constructor <init>(Lo3/f;Z)V
    .locals 1

    const-string v0, "singleRunner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/u1;->a:Lo3/f;

    iput-boolean p2, p0, Lv2/u1;->b:Z

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object p1

    iput-object p1, p0, Lv2/u1;->c:LYc/d;

    return-void
.end method


# virtual methods
.method public final a(LNc/j0;Lkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lv2/s1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/s1;

    iget v1, v0, Lv2/s1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/s1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/s1;

    invoke-direct {v0, p0, p2}, Lv2/s1;-><init>(Lv2/u1;Lkb/c;)V

    :goto_0
    iget-object p2, v0, Lv2/s1;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/s1;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lv2/s1;->c:LYc/d;

    iget-object p1, v0, Lv2/s1;->b:LNc/j0;

    iget-object v0, v0, Lv2/s1;->a:Lv2/u1;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lv2/s1;->a:Lv2/u1;

    iput-object p1, v0, Lv2/s1;->b:LNc/j0;

    iget-object p2, p0, Lv2/u1;->c:LYc/d;

    iput-object p2, v0, Lv2/s1;->c:LYc/d;

    iput v3, v0, Lv2/s1;->f:I

    invoke-virtual {p2, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lv2/u1;->d:LNc/j0;

    if-ne p1, v1, :cond_4

    iput-object v0, p0, Lv2/u1;->d:LNc/j0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {p2, v0}, LYc/a;->b(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_3
    invoke-interface {p2, v0}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final b(ILNc/j0;Lkb/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lv2/t1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lv2/t1;

    iget v1, v0, Lv2/t1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/t1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/t1;

    invoke-direct {v0, p0, p3}, Lv2/t1;-><init>(Lv2/u1;Lkb/c;)V

    :goto_0
    iget-object p3, v0, Lv2/t1;->e:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/t1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lv2/t1;->d:I

    iget-object p1, v0, Lv2/t1;->c:LYc/a;

    iget-object p2, v0, Lv2/t1;->b:LNc/j0;

    iget-object v0, v0, Lv2/t1;->a:Lv2/u1;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, v0, Lv2/t1;->d:I

    iget-object p0, v0, Lv2/t1;->c:LYc/a;

    iget-object p2, v0, Lv2/t1;->b:LNc/j0;

    iget-object v2, v0, Lv2/t1;->a:Lv2/u1;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lv2/t1;->a:Lv2/u1;

    iput-object p2, v0, Lv2/t1;->b:LNc/j0;

    iget-object p3, p0, Lv2/u1;->c:LYc/d;

    iput-object p3, v0, Lv2/t1;->c:LYc/a;

    iput p1, v0, Lv2/t1;->d:I

    iput v4, v0, Lv2/t1;->g:I

    invoke-virtual {p3, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lv2/u1;->d:LNc/j0;

    if-eqz v2, :cond_6

    invoke-interface {v2}, LNc/j0;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lv2/u1;->e:I

    if-lt v6, p1, :cond_6

    if-ne v6, p1, :cond_5

    iget-boolean v6, p0, Lv2/u1;->b:Z

    if-eqz v6, :cond_5

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, p3

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move-object p1, p3

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    new-instance v6, Lv2/r1;

    iget-object v7, p0, Lv2/u1;->a:Lo3/f;

    invoke-direct {v6, v7}, Lv2/r1;-><init>(Lo3/f;)V

    invoke-interface {v2, v6}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    if-eqz v2, :cond_9

    iput-object p0, v0, Lv2/t1;->a:Lv2/u1;

    iput-object p2, v0, Lv2/t1;->b:LNc/j0;

    iput-object p3, v0, Lv2/t1;->c:LYc/a;

    iput p1, v0, Lv2/t1;->d:I

    iput v3, v0, Lv2/t1;->g:I

    invoke-interface {v2, v0}, LNc/j0;->h(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v0, p0

    move p0, p1

    move-object p1, p3

    :goto_4
    move-object p3, p1

    move p1, p0

    move-object p0, v0

    :cond_9
    iput-object p2, p0, Lv2/u1;->d:LNc/j0;

    iput p1, p0, Lv2/u1;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_5
    :try_start_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1, v5}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p0

    :goto_6
    invoke-interface {p1, v5}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method
