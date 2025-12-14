.class public final Landroidx/lifecycle/d0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LYc/a;

.field public b:Lkb/i;

.field public c:I

.field public final synthetic d:LYc/d;

.field public final synthetic e:Lkb/i;


# direct methods
.method public constructor <init>(LYc/d;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/d0;->d:LYc/d;

    check-cast p2, Lkb/i;

    iput-object p2, p0, Landroidx/lifecycle/d0;->e:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Landroidx/lifecycle/d0;

    iget-object v0, p0, Landroidx/lifecycle/d0;->d:LYc/d;

    iget-object p0, p0, Landroidx/lifecycle/d0;->e:Lkb/i;

    invoke-direct {p1, v0, p0, p2}, Landroidx/lifecycle/d0;-><init>(LYc/d;Lsb/n;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/d0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/d0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Landroidx/lifecycle/d0;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/d0;->a:LYc/a;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/d0;->b:Lkb/i;

    check-cast v1, Lsb/n;

    iget-object v3, p0, Landroidx/lifecycle/d0;->a:LYc/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/d0;->d:LYc/d;

    iput-object p1, p0, Landroidx/lifecycle/d0;->a:LYc/a;

    iget-object v1, p0, Landroidx/lifecycle/d0;->e:Lkb/i;

    iput-object v1, p0, Landroidx/lifecycle/d0;->b:Lkb/i;

    iput v3, p0, Landroidx/lifecycle/d0;->c:I

    invoke-virtual {p1, p0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    :try_start_1
    new-instance v3, Landroidx/lifecycle/c0;

    invoke-direct {v3, v1, v4}, Landroidx/lifecycle/c0;-><init>(Lsb/n;Lib/c;)V

    iput-object p1, p0, Landroidx/lifecycle/d0;->a:LYc/a;

    iput-object v4, p0, Landroidx/lifecycle/d0;->b:Lkb/i;

    iput v2, p0, Landroidx/lifecycle/d0;->c:I

    invoke-static {v3, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    move-object p0, p1

    :goto_1
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_1
    move-exception p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_2
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1
.end method
