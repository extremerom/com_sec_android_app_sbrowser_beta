.class public final Landroidx/lifecycle/j;
.super Landroidx/lifecycle/W;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/d;


# virtual methods
.method public final b(Lkb/c;)V
    .locals 4

    instance-of v0, p1, Landroidx/lifecycle/i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/i;

    iget v1, v0, Landroidx/lifecycle/i;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/lifecycle/i;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/j;Lkb/c;)V

    :goto_0
    iget-object p1, v0, Landroidx/lifecycle/i;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, v0, Landroidx/lifecycle/i;->c:I

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onActive()V
    .locals 4

    invoke-super {p0}, Landroidx/lifecycle/W;->onActive()V

    iget-object p0, p0, Landroidx/lifecycle/j;->a:Landroidx/lifecycle/d;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/lifecycle/d;->g:LNc/C0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/d;->g:LNc/C0;

    iget-object v0, p0, Landroidx/lifecycle/d;->f:LNc/C0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/lifecycle/c;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/c;-><init>(Landroidx/lifecycle/d;Lib/c;)V

    iget-object v2, p0, Landroidx/lifecycle/d;->d:LUc/e;

    const/4 v3, 0x3

    invoke-static {v2, v1, v1, v0, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/d;->f:LNc/C0;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onInactive()V
    .locals 5

    invoke-super {p0}, Landroidx/lifecycle/W;->onInactive()V

    iget-object p0, p0, Landroidx/lifecycle/j;->a:Landroidx/lifecycle/d;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/d;->g:LNc/C0;

    if-nez v0, :cond_0

    sget-object v0, LNc/N;->a:LWc/f;

    sget-object v0, LUc/q;->a:LNc/w0;

    invoke-virtual {v0}, LNc/w0;->K()LNc/w0;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/b;-><init>(Landroidx/lifecycle/d;Lib/c;)V

    iget-object v3, p0, Landroidx/lifecycle/d;->d:LUc/e;

    const/4 v4, 0x2

    invoke-static {v3, v0, v2, v1, v4}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/d;->g:LNc/C0;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cancel call cannot happen without a maybeRun"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
