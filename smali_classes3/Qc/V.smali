.class public final LQc/V;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LQc/r0;

.field public final synthetic c:LQc/h;

.field public final synthetic d:LRc/b;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQc/r0;LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/V;->b:LQc/r0;

    iput-object p2, p0, LQc/V;->c:LQc/h;

    check-cast p3, LRc/b;

    iput-object p3, p0, LQc/V;->d:LRc/b;

    iput-object p4, p0, LQc/V;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, LQc/V;

    iget-object v3, p0, LQc/V;->d:LRc/b;

    iget-object v4, p0, LQc/V;->e:Ljava/lang/Object;

    iget-object v1, p0, LQc/V;->b:LQc/r0;

    iget-object v2, p0, LQc/V;->c:LQc/h;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LQc/V;-><init>(LQc/r0;LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LQc/V;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LQc/V;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LQc/V;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQc/V;->a:I

    iget-object v2, p0, LQc/V;->c:LQc/h;

    iget-object v3, p0, LQc/V;->d:LRc/b;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v7, :cond_1

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p1, LQc/q0;->a:LQc/s0;

    iget-object v1, p0, LQc/V;->b:LQc/r0;

    if-ne v1, p1, :cond_4

    iput v6, p0, LQc/V;->a:I

    invoke-interface {v2, v3, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_4
    sget-object p1, LQc/q0;->b:LQc/s0;

    const/4 v6, 0x0

    if-ne v1, p1, :cond_6

    invoke-virtual {v3}, LRc/b;->h()LRc/M;

    move-result-object p1

    new-instance v1, LQc/S;

    invoke-direct {v1, v7, v6}, Lkb/i;-><init>(ILib/c;)V

    iput v7, p0, LQc/V;->a:I

    invoke-static {p1, v1, p0}, LQc/n0;->o(LQc/h;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iput v5, p0, LQc/V;->a:I

    invoke-interface {v2, v3, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_6
    invoke-virtual {v3}, LRc/b;->h()LRc/M;

    move-result-object p1

    invoke-interface {v1, p1}, LQc/r0;->a(LRc/M;)LQc/h;

    move-result-object p1

    invoke-static {p1}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object p1

    new-instance v1, LQc/U;

    iget-object v5, p0, LQc/V;->e:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v5, v6}, LQc/U;-><init>(LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V

    iput v4, p0, LQc/V;->a:I

    invoke-static {p1, v1, p0}, LQc/n0;->i(LQc/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
